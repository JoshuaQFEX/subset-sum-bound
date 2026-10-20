#!/usr/bin/env python3
"""Generate per-row Lean proofs for every pinned filter and multiplier record.

The input bytes must have the pinned Git blob hash. Python only emits source;
Lean checks all inequalities. Continuous moment integrals are not proved here.
Author: Joshua Wharton, QFEX, joshua@qfex.com
"""
from __future__ import annotations
import argparse
import hashlib
from fractions import Fraction
from pathlib import Path
import re

BLOB = '526c2622038a633cbc1bef9ef5e3f4514843cd91'
COMMIT = '44c34961b56784c220a6e913cc068d57dc37c5a3'


def rat(value: str) -> str:
    q = Fraction(value.strip())
    return f'({q.numerator} / {q.denominator} : ℚ)'


def rats(value: str) -> str:
    return '[' + ', '.join(rat(s) for s in value.split(',')) + ']'


def aggregate(name: str, definition: str, predicate: str, facts: list[str]) -> list[str]:
    return [f'theorem {name} : ∀ x ∈ {definition}, {predicate} x := by',
            f'  simp only [{definition}, List.forall_mem_cons]',
            '  exact ⟨' + ', '.join(facts) + ', by simp⟩', '']


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source', type=Path)
    parser.add_argument('output', type=Path)
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
    lines = [
        '/-', 'Author: Joshua Wharton, QFEX, joshua@qfex.com',
        'Prepared with ChatGPT. Original finite tables: a-kapila/maths-proofs.',
        f'Pinned commit: {COMMIT}', f'Pinned Git blob: {BLOB}',
        'These are finite-data proofs, not proofs of continuous moment integrals.', '-/',
        'import Mathlib', '', 'set_option autoImplicit false',
        'set_option maxHeartbeats 2000000', 'set_option maxRecDepth 100000', '',
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
    ]
    for v in range(43):
        k, r, s = filters[v]
        lines += [f'def filter_{v} : RawFilter := ⟨{rat(k)}, {rats(r)}, {rats(s)}⟩',
                  f'private theorem filter_{v}_valid : ValidFilter filter_{v} := by',
                  f'  norm_num [filter_{v}, ValidFilter]', '']
    for v in range(43):
        for r in range(10):
            comps, zs = certs[(v, r)]
            key = f'certificate_{v}_{r}'
            cs = '[' + ', '.join(str(j) for j in comps) + ']'
            lines += [f'def {key} : RawCertificate := ⟨{v}, {r}, {cs}, {rats(zs)}⟩',
                      f'private theorem {key}_valid : ValidCertificate {key} := by',
                      f'  norm_num [{key}, ValidCertificate, lowerBoundary, Fin.ext_iff] <;> decide',
                      f'private theorem {key}_cap : FirstCap {key} := by',
                      f'  norm_num [{key}, FirstCap]', '']
    filter_names = [f'filter_{v}' for v in range(43)]
    cert_names = [f'certificate_{v}_{r}' for v in range(43) for r in range(10)]
    lines += ['def filters : List RawFilter := [' + ', '.join(filter_names) + ']',
              'def certificates : List RawCertificate := [' + ', '.join(cert_names) + ']', '',
              'theorem filters_count : filters.length = 43 := by decide',
              'theorem certificates_count : certificates.length = 430 := by decide', '']
    lines += aggregate('all_filters_valid', 'filters', 'ValidFilter', [f + '_valid' for f in filter_names])
    lines += aggregate('all_certificates_valid', 'certificates', 'ValidCertificate', [c + '_valid' for c in cert_names])
    lines += aggregate('first_multiplier_caps', 'certificates', 'FirstCap', [c + '_cap' for c in cert_names])
    lines += ['theorem all_regions_present :',
              '    certificates.map (fun c => (c.filterIndex, c.region)) =',
              '      (List.finRange 43).flatMap (fun v => (List.finRange 10).map (fun r => (v, r))) := by',
              '  decide', '', '#print axioms all_filters_valid',
              '#print axioms all_certificates_valid', '#print axioms first_multiplier_caps',
              '#print axioms all_regions_present', '', 'end SubsetSum.FilterData', '']
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text('\n'.join(lines), encoding='utf-8')
    print(f'Pinned source blob {blob}: emitted all 43 filters and 430 certificates.')


if __name__ == '__main__':
    main()
