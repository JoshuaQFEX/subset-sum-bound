#!/usr/bin/env python3
"""Emit kernel-evaluated finite-data proofs from an authenticated source blob.

Author: Joshua Wharton, QFEX, joshua@qfex.com
Python extracts rational constants; it does not certify their inequalities.
Every finite statement is proved by Lean's decide +kernel, without native
execution. The original continuous moment integrals are outside this module.
"""
from __future__ import annotations
import argparse
import hashlib
import re
from fractions import Fraction
from pathlib import Path

BLOB = '526c2622038a633cbc1bef9ef5e3f4514843cd91'
COMMIT = '44c34961b56784c220a6e913cc068d57dc37c5a3'


def rat(value: str) -> str:
    q = Fraction(value.strip())
    return f'({q.numerator} / {q.denominator} : ℚ)'


def rats(value: str) -> str:
    return '[' + ', '.join(rat(x) for x in value.split(',')) + ']'


def all_cons_proof(names: list[str]) -> str:
    tail = 'all_nil'
    for name in reversed(names):
        tail = f'all_cons {name} ({tail})'
    return tail


def all_append_proof(names: list[str]) -> str:
    tail = 'all_nil'
    for name in reversed(names):
        tail = f'all_append {name} ({tail})'
    return tail


def header(imports: list[str]) -> str:
    return ('/-\nAuthor: Joshua Wharton, QFEX, joshua@qfex.com\n'
            'Prepared with ChatGPT. Finite data from a-kapila/maths-proofs.\n'
            f'Pinned source commit: {COMMIT}\nPinned Git blob: {BLOB}\n'
            'Finite rational statements only; not continuous integral estimates.\n-/\n' +
            ''.join(f'import {m}\n' for m in imports) +
            '\nset_option autoImplicit false\nset_option maxHeartbeats 2000000\n'
            'set_option maxRecDepth 100000\n\nnamespace SubsetSum.FilterData\n\n')


BASE = '''structure RawFilter where
  kappa : ℚ
  rCoeffs : List ℚ
  sCoeffs : List ℚ
  deriving DecidableEq

structure RawCertificate where
  filterIndex : Fin 43
  region : Fin 10
  comparisons : List (Fin 43)
  multipliers : List ℚ
  deriving DecidableEq

def lowerBoundary (r : Fin 10) : ℚ :=
  [0, 1, 5/4, 8/5, 2, 13/5, 7/2, 5, 8, 15].getD r.val 0

def ValidFilter (f : RawFilter) : Prop :=
  f.rCoeffs.length = 8 ∧ f.sCoeffs.length = 8 ∧
  1 ≤ f.kappa ∧ f.kappa ≤ 2 ∧
  (∀ x ∈ f.rCoeffs, |x| ≤ 2) ∧ (∀ x ∈ f.sCoeffs, |x| ≤ 2)

def ValidCertificate (c : RawCertificate) : Prop :=
  c.multipliers.length = c.comparisons.length +
    (if c.region.val = 0 ∨ c.region.val = 9 then 2 else 3) ∧
  (∀ z ∈ c.multipliers, 0 ≤ z) ∧ c.multipliers.sum ≤ (10459/25 : ℚ) ∧
  (∀ j ∈ c.comparisons, j ≠ c.filterIndex) ∧
  (if c.region.val = 0 then 1 ≤ c.multipliers.headD 0
   else 1 ≤ lowerBoundary c.region * c.multipliers.headD 0)

def FirstCap (c : RawCertificate) : Prop :=
  (c.region.val = 0 → c.multipliers.headD 0 ≤ (17211/1000 : ℚ)) ∧
  (c.region.val = 1 → c.multipliers.headD 0 ≤ (84537/10000 : ℚ))

instance (f : RawFilter) : Decidable (ValidFilter f) := by
  unfold ValidFilter
  infer_instance

instance (c : RawCertificate) : Decidable (ValidCertificate c) := by
  unfold ValidCertificate
  infer_instance

instance (c : RawCertificate) : Decidable (FirstCap c) := by
  unfold FirstCap
  infer_instance

lemma all_nil {A : Type*} {P : A → Prop} : ∀ x ∈ ([] : List A), P x := by
  simp

lemma all_cons {A : Type*} {P : A → Prop} {a : A} {xs : List A}
    (ha : P a) (hs : ∀ x ∈ xs, P x) : ∀ x ∈ a :: xs, P x := by
  intro x hx
  rcases List.mem_cons.mp hx with rfl | hx
  · exact ha
  · exact hs x hx

lemma all_append {A : Type*} {P : A → Prop} {xs ys : List A}
    (hx : ∀ x ∈ xs, P x) (hy : ∀ y ∈ ys, P y) : ∀ z ∈ xs ++ ys, P z := by
  intro z hz
  rcases List.mem_append.mp hz with hz | hz
  · exact hx z hz
  · exact hy z hz

/-- Regression tests: malformed finite inputs are rejected by the predicates. -/
theorem invalid_filter_rejected : ¬ ValidFilter ⟨0, [], []⟩ := by
  decide +kernel

theorem negative_multiplier_rejected : ¬ ValidCertificate ⟨0, 0, [], [-1, -1]⟩ := by
  decide +kernel
'''


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source', type=Path)
    parser.add_argument('output', type=Path)
    args = parser.parse_args()
    data = args.source.read_bytes()
    blob = hashlib.sha1(b'blob ' + str(len(data)).encode() + b'\0' + data).hexdigest()
    if blob != BLOB:
        raise ValueError(f'Expected baseline Git blob {BLOB}; received {blob}')
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
            comps = [int(x) for x in re.findall(r'\d+', fields[2])]
            if any(not 0 <= j < 43 for j in comps):
                raise ValueError(f'Out-of-range comparison in {key}')
            for x in fields[3].split(','):
                Fraction(x.strip())
            certs[key] = comps, fields[3]
        elif re.fullmatch(r'[0-9.]+', fields[1]):
            if v in filters:
                raise ValueError(f'Duplicate filter {v}')
            if any(len(fields[j].split(',')) != 8 for j in (2, 3)):
                raise ValueError(f'Wrong coefficient count in filter {v}')
            filters[v] = fields[1], fields[2], fields[3]
    if set(filters) != set(range(43)) or set(certs) != {(v, r) for v in range(43) for r in range(10)}:
        raise ValueError('Source must contain exactly 43 filters and 430 distinct certificate records')

    outdir = args.output.parent / 'FilterData'
    outdir.mkdir(parents=True, exist_ok=True)
    for old in outdir.glob('*.lean'):
        if not re.fullmatch(r'(Base|Filter\d{2}|Certificate\d{2}_\d{2})\.lean', old.name):
            raise ValueError(f'Refusing to remove an unrecognised file: {old}')
        old.unlink()
    end = '\nend SubsetSum.FilterData\n'
    (outdir / 'Base.lean').write_text(header(['Mathlib']) + BASE + end, encoding='utf-8')
    imports = []
    families = []
    for v in range(43):
        imports.append(f'SubsetSum.FilterData.Filter{v:02d}')
        k, rc, sc = filters[v]
        text = header(['SubsetSum.FilterData.Base'])
        text += f'def filter_{v} : RawFilter := ⟨{rat(k)}, {rats(rc)}, {rats(sc)}⟩\n'
        text += f'theorem filter_{v}_valid : ValidFilter filter_{v} := by\n  decide +kernel\n\n'
        names = []
        for r in range(10):
            comps, zs = certs[(v, r)]
            key = f'certificate_{v}_{r}'
            names.append(key)
            cs = '[' + ', '.join(str(j) for j in comps) + ']'
            text += f'def {key} : RawCertificate := ⟨{v}, {r}, {cs}, {rats(zs)}⟩\n'
            text += f'theorem {key}_valid : ValidCertificate {key} := by\n  decide +kernel\n'
            text += f'theorem {key}_cap : FirstCap {key} := by\n  decide +kernel\n\n'
        family = f'filter_{v}_certificates'
        families.append(family)
        text += f'def {family} : List RawCertificate := [' + ', '.join(names) + ']\n'
        text += f'theorem {family}_count : {family}.length = 10 := by rfl\n'
        text += f'theorem {family}_valid : ∀ c ∈ {family}, ValidCertificate c := by\n'
        text += '  exact ' + all_cons_proof([name + '_valid' for name in names]) + '\n'
        text += f'theorem {family}_caps : ∀ c ∈ {family}, FirstCap c := by\n'
        text += '  exact ' + all_cons_proof([name + '_cap' for name in names]) + '\n'
        (outdir / f'Filter{v:02d}.lean').write_text(text + end, encoding='utf-8')

    text = header(imports)
    text += 'def filters : List RawFilter := [' + ', '.join(f'filter_{v}' for v in range(43)) + ']\n'
    joined = '[]'
    for family in reversed(families):
        joined = f'{family} ++ ({joined})'
    text += 'def certificates : List RawCertificate := ' + joined + '\n\n'
    text += 'theorem filters_count : filters.length = 43 := by decide +kernel\n'
    text += 'theorem certificates_count : certificates.length = 430 := by decide +kernel\n\n'
    text += 'theorem all_filters_valid : ∀ f ∈ filters, ValidFilter f := by\n  exact '
    text += all_cons_proof([f'filter_{v}_valid' for v in range(43)]) + '\n\n'
    text += 'theorem all_certificates_valid : ∀ c ∈ certificates, ValidCertificate c := by\n  exact '
    text += all_append_proof([f + '_valid' for f in families]) + '\n\n'
    text += 'theorem first_multiplier_caps : ∀ c ∈ certificates, FirstCap c := by\n  exact '
    text += all_append_proof([f + '_caps' for f in families]) + '\n\n'
    text += '''def expectedIndices : List (ℕ × ℕ) :=
  (List.range 43).flatMap (fun v => (List.range 10).map (fun r => (v, r)))

theorem all_regions_present :
    certificates.map (fun c => (c.filterIndex.val, c.region.val)) = expectedIndices := by
  decide +kernel

/-- All finite side conditions and exact coverage, without numerical hypotheses. -/
theorem complete_finite_certificate_data :
    filters.length = 43 ∧ certificates.length = 430 ∧
    (∀ f ∈ filters, ValidFilter f) ∧
    (∀ c ∈ certificates, ValidCertificate c) ∧
    (∀ c ∈ certificates, FirstCap c) ∧
    certificates.map (fun c => (c.filterIndex.val, c.region.val)) = expectedIndices :=
  ⟨filters_count, certificates_count, all_filters_valid, all_certificates_valid,
    first_multiplier_caps, all_regions_present⟩
'''
    args.output.write_text(text + end, encoding='utf-8')
    print(f'Authenticated Git blob {blob}: emitted 43 filters, 430 certificate records, and aggregate proofs.')


if __name__ == '__main__':
    main()
