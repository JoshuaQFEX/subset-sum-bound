#!/usr/bin/env python3
"""Generate small, independently kernel-checked Lean files for pinned filter data.

The input bytes must have the pinned Git blob hash. Python only emits source;
Lean checks each individual filter and certificate inequality. Continuous
moment integrals are not proved here.
Author: Joshua Wharton, QFEX, joshua@qfex.com
"""
from __future__ import annotations
import hashlib
from fractions import Fraction
from pathlib import Path
import re
import shutil

BLOB = '526c2622038a633cbc1bef9ef5e3f4514843cd91'
COMMIT = '44c34961b56784c220a6e913cc068d57dc37c5a3'


def rat(value: str) -> str:
    q = Fraction(value.strip())
    return f'({q.numerator} / {q.denominator} : ℚ)'


def rats(value: str) -> str:
    return '[' + ', '.join(rat(s) for s in value.split(',')) + ']'


def main() -> None:
    import argparse
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source', type=Path)
    parser.add_argument('output', type=Path, help='aggregator path, normally SubsetSum/FilterData.lean')
    args = parser.parse_args()
    data = args.source.read_bytes()
    blob = hashlib.sha1(b'blob ' + str(len(data)).encode() + b'\0' + data).hexdigest()
    if blob != BLOB:
        raise ValueError(f'Baseline Git blob {blob} does not match {BLOB}')

    filters: dict[int, tuple[str, str, str]] = {}
    certs: dict[tuple[int, int], tuple[list[int], str]] = {}
    for raw in data.decode('utf-8').splitlines():
        line = raw.strip()
        if not re.match(r'^\d+\s*&', line) or not line.endswith('\\\\'):
            continue
        fields = [x.strip() for x in line[:-2].split('&')]
        if len(fields) != 4:
            continue
        v = int(fields[0])
        m = re.fullmatch(r'\$\\rho_\{(\d+)\}\$', fields[1])
        if m:
            key = (v, int(m.group(1)))
            if key in certs:
                raise ValueError(f'Duplicate certificate {key}')
            comparisons = [int(x) for x in re.findall(r'\d+', fields[2])]
            if any(not 0 <= x < 43 for x in comparisons):
                raise ValueError(f'Invalid comparison index in {key}')
            for x in fields[3].split(','):
                Fraction(x.strip())
            certs[key] = comparisons, fields[3]
        elif re.fullmatch(r'[0-9.]+', fields[1]):
            if v in filters:
                raise ValueError(f'Duplicate filter {v}')
            if any(len(fields[j].split(',')) != 8 for j in [2, 3]):
                raise ValueError(f'Wrong coefficient count in filter {v}')
            filters[v] = fields[1], fields[2], fields[3]

    if set(filters) != set(range(43)) or set(certs) != {(v, r) for v in range(43) for r in range(10)}:
        raise ValueError('Incomplete or extra mathematical records')

    outdir = args.output.parent / 'FilterData'
    if outdir.exists():
        shutil.rmtree(outdir)
    outdir.mkdir(parents=True, exist_ok=True)

    base = [
        '/-', 'Author: Joshua Wharton, QFEX, joshua@qfex.com',
        'Prepared with ChatGPT. Original finite tables: a-kapila/maths-proofs.',
        f'Pinned commit: {COMMIT}', f'Pinned Git blob: {BLOB}',
        'Definitions shared by independently checked certificate modules.', '-/',
        'import Mathlib', '',
        'set_option autoImplicit false', 'set_option maxHeartbeats 2000000',
        'set_option maxRecDepth 100000', '',
        'namespace SubsetSum.FilterData', '',
        'structure RawFilter where', '  kappa : ℚ', '  rCoeffs : List ℚ',
        '  sCoeffs : List ℚ', '  deriving DecidableEq', '',
        'structure RawCertificate where', '  filterIndex : Fin 43', '  region : Fin 10',
        '  comparisons : List (Fin 43)', '  multipliers : List ℚ', '  deriving DecidableEq', '',
        'def lowerBoundary (r : Fin 10) : ℚ :=',
        '  [0, 1, 5/4, 8/5, 2, 13/5, 7/2, 5, 8, 15].getD r.val 0', '',
        'def ValidFilter (f : RawFilter) : Prop :=',
        '  f.rCoeffs.length = 8 ∧ f.sCoeffs.length = 8 ∧',
        '  1 ≤ f.kappa ∧ f.kappa ≤ 2 ∧',
        '  (∀ x ∈ f.rCoeffs, |x| ≤ 2) ∧ (∀ x ∈ f.sCoeffs, |x| ≤ 2)', '',
        'def ValidCertificate (c : RawCertificate) : Prop :=',
        '  c.multipliers.length = c.comparisons.length +',
        '    (if c.region.val = 0 ∨ c.region.val = 9 then 2 else 3) ∧',
        '  (∀ z ∈ c.multipliers, 0 ≤ z) ∧ c.multipliers.sum ≤ (10459/25 : ℚ) ∧',
        '  (∀ j ∈ c.comparisons, j ≠ c.filterIndex) ∧',
        '  (if c.region.val = 0 then 1 ≤ c.multipliers.headD 0',
        '   else 1 ≤ lowerBoundary c.region * c.multipliers.headD 0)', '',
        'def FirstCap (c : RawCertificate) : Prop :=',
        '  (c.region.val = 0 → c.multipliers.headD 0 ≤ (17211/1000 : ℚ)) ∧',
        '  (c.region.val = 1 → c.multipliers.headD 0 ≤ (84537/10000 : ℚ))', '',
        'end SubsetSum.FilterData', ''
    ]
    (outdir / 'Base.lean').write_text('\n'.join(base), encoding='utf-8')

    imports = ['SubsetSum.FilterData.Base']
    filter_names = [f'filter_{v}' for v in range(43)]
    for v in range(43):
        mod = f'Filter{v:02d}'
        imports.append(f'SubsetSum.FilterData.{mod}')
        lines = [
            '/-', f'Author: Joshua Wharton, QFEX, joshua@qfex.com',
            f'Finite data for filter {v}; each proposition is checked by Lean.',
            f'Extracted from pinned source commit {COMMIT}.', '-/',
            'import SubsetSum.FilterData.Base', '',
            'set_option autoImplicit false', 'set_option maxHeartbeats 2000000',
            'set_option maxRecDepth 100000', '',
            'namespace SubsetSum.FilterData', ''
        ]
        k, rc, sc = filters[v]
        lines += [
            f'def filter_{v} : RawFilter := ⟨{rat(k)}, {rats(rc)}, {rats(sc)}⟩',
            f'theorem filter_{v}_valid : ValidFilter filter_{v} := by',
            f'  norm_num [filter_{v}, ValidFilter]', ''
        ]
        for r in range(10):
            comps, zs = certs[(v, r)]
            key = f'certificate_{v}_{r}'
            cs = '[' + ', '.join(str(j) for j in comps) + ']'
            lines += [
                f'def {key} : RawCertificate := ⟨{v}, {r}, {cs}, {rats(zs)}⟩',
                f'theorem {key}_valid : ValidCertificate {key} := by',
                f'  norm_num [{key}, ValidCertificate, lowerBoundary, Fin.ext_iff] <;> decide',
                f'theorem {key}_cap : FirstCap {key} := by',
                f'  norm_num [{key}, FirstCap]', ''
            ]
        names = [f'certificate_{v}_{r}' for r in range(10)]
        lines += [
            f'def filter_{v}_certificates : List RawCertificate := [' + ', '.join(names) + ']',
            f'theorem filter_{v}_certificates_count : filter_{v}_certificates.length = 10 := by',
            '  rfl', '',
            'end SubsetSum.FilterData', ''
        ]
        (outdir / f'{mod}.lean').write_text('\n'.join(lines), encoding='utf-8')

    aggregator = [
        '/-', 'Author: Joshua Wharton, QFEX, joshua@qfex.com',
        'Generated aggregator. Each filter/certificate is proved in a small module.',
        'All modules are imported so the standalone Lean command kernel-checks them.', '-/',
        *[f'import {name}' for name in imports], '',
        'namespace SubsetSum.FilterData', '',
        'def filters : List RawFilter := [' + ', '.join(filter_names) + ']',
        'def certificates : List RawCertificate := ' +
        ' ++ '.join(f'filter_{v}_certificates' for v in range(43)),
        '',
        'theorem filters_count : filters.length = 43 := by',
        '  rfl', '',

        'end SubsetSum.FilterData', ''
    ]
    args.output.write_text('\n'.join(aggregator), encoding='utf-8')
    print(f'Pinned source blob {blob}: emitted 43 filters and 430 certificates in small Lean modules.')


if __name__ == '__main__':
    main()
