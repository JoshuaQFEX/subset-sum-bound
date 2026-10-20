#!/usr/bin/env python3
"""Generate Lean proofs of the pinned baseline's finite data bounds.

The input Git blob hash is checked before transcribing the mathematical tables.
The generated proofs use kernel-checked arithmetic; this does not check integrals.
Author: Joshua Wharton, QFEX, joshua@qfex.com
"""
from __future__ import annotations
import argparse
import hashlib
from fractions import Fraction
from pathlib import Path
import re

BLOB = "526c2622038a633cbc1bef9ef5e3f4514843cd91"
COMMIT = "44c34961b56784c220a6e913cc068d57dc37c5a3"


def rat(value: str) -> str:
    q = Fraction(value.strip())
    return f"({q.numerator} / {q.denominator} : ℚ)"


def rats(value: str) -> str:
    return "[" + ", ".join(rat(s) for s in value.split(",")) + "]"


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    data = args.source.read_bytes()
    blob = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    if blob != BLOB:
        raise ValueError(f"Baseline source hash mismatch: {blob}; expected {BLOB}")
    filters: dict[int, tuple[str, str, str]] = {}
    certs: dict[tuple[int, int], tuple[list[int], str]] = {}
    for line in data.decode("utf-8").splitlines():
        line = line.strip()
        if not re.match(r"^\d+\s*&", line) or not line.endswith("\\\\"):
            continue
        fields = [x.strip() for x in line[:-2].split("&")]
        if len(fields) != 4:
            continue
        v = int(fields[0])
        region = re.fullmatch(r"\$\\rho_\{(\d+)\}\$", fields[1])
        if region:
            r = int(region.group(1))
            key = (v, r)
            if key in certs:
                raise ValueError(f"Duplicate certificate {key}")
            comps = [int(x) for x in re.findall(r"\d+", fields[2])]
            if any(j < 0 or j >= 43 for j in comps):
                raise ValueError(f"Invalid comparison index: {key}")
            for z in fields[3].split(","):
                Fraction(z.strip())
            certs[key] = comps, fields[3]
        elif re.fullmatch(r"[0-9.]+", fields[1]):
            if v in filters:
                raise ValueError(f"Duplicate filter {v}")
            if len(fields[2].split(",")) != 8 or len(fields[3].split(",")) != 8:
                raise ValueError(f"Unexpected coefficient count at filter {v}")
            filters[v] = fields[1], fields[2], fields[3]
    if set(filters) != set(range(43)):
        raise ValueError("Missing or extra filters")
    if set(certs) != {(v, r) for v in range(43) for r in range(10)}:
        raise ValueError("Missing or extra certificates")
    lines = [
        "/-",
        "Author: Joshua Wharton, QFEX, joshua@qfex.com",
        "Prepared with ChatGPT. Finite data transcribed from a-kapila/maths-proofs.",
        f"Pinned source commit: {COMMIT}",
        f"Pinned source Git blob: {BLOB}",
        "These proofs establish finite data validity, not continuous integral bounds.",
        "-/",
        "import Mathlib",
        "",
        "set_option autoImplicit false",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 1000000",
        "",
        "namespace SubsetSum.FilterData",
        "",
        "structure RawFilter where",
        "  kappa : ℚ",
        "  rCoeffs : List ℚ",
        "  sCoeffs : List ℚ",
        "  deriving DecidableEq",
        "",
        "structure RawCertificate where",
        "  filterIndex : Fin 43",
        "  region : Fin 10",
        "  comparisons : List (Fin 43)",
        "  multipliers : List ℚ",
        "  deriving DecidableEq",
        "",
        "def filters : List RawFilter := [",
    ]
    for v in range(43):
        k, r, s = filters[v]
        lines.append(f"  ⟨{rat(k)}, {rats(r)}, {rats(s)}⟩" + ("," if v != 42 else ""))
    lines += ["]", "", "def certificates : List RawCertificate := ["]
    for v in range(43):
        for r in range(10):
            comps, zs = certs[(v, r)]
            cs = "[" + ", ".join(str(j) for j in comps) + "]"
            lines.append(f"  ⟨{v}, {r}, {cs}, {rats(zs)}⟩" + ("," if (v, r) != (42, 9) else ""))
    lines += [
        "]",
        "",
        "def lowerBoundary (r : Fin 10) : ℚ :=",
        "  [0, 1, 5/4, 8/5, 2, 13/5, 7/2, 5, 8, 15].getD r.val 0",
        "",
        "def ValidFilter (f : RawFilter) : Prop :=",
        "  f.rCoeffs.length = 8 ∧ f.sCoeffs.length = 8 ∧",
        "  1 ≤ f.kappa ∧ f.kappa ≤ 2 ∧",
        "  (∀ x ∈ f.rCoeffs, |x| ≤ 2) ∧ (∀ x ∈ f.sCoeffs, |x| ≤ 2)",
        "",
        "def ValidCertificate (c : RawCertificate) : Prop :=",
        "  c.multipliers.length = c.comparisons.length +",
        "    (if c.region.val = 0 ∨ c.region.val = 9 then 2 else 3) ∧",
        "  (∀ z ∈ c.multipliers, 0 ≤ z) ∧",
        "  c.multipliers.sum ≤ (10459/25 : ℚ) ∧",
        "  (∀ j ∈ c.comparisons, j ≠ c.filterIndex) ∧",
        "  (if c.region.val = 0 then 1 ≤ c.multipliers.headD 0",
        "   else 1 ≤ lowerBoundary c.region * c.multipliers.headD 0)",
        "",
        "theorem filters_count : filters.length = 43 := by decide",
        "theorem certificates_count : certificates.length = 430 := by decide",
        "",
        "theorem all_filters_valid : ∀ f ∈ filters, ValidFilter f := by",
        "  norm_num [filters, ValidFilter]",
        "",
        "theorem all_certificates_valid : ∀ c ∈ certificates, ValidCertificate c := by",
        "  norm_num [certificates, ValidCertificate, lowerBoundary]",
        "",
        "theorem all_regions_present :",
        "    certificates.map (fun c => (c.filterIndex, c.region)) =",
        "      (List.finRange 43).flatMap (fun v => (List.finRange 10).map (fun r => (v, r))) := by",
        "  decide",
        "",
        "theorem first_multiplier_caps : ∀ c ∈ certificates,",
        "    (c.region.val = 0 → c.multipliers.headD 0 ≤ (17211/1000 : ℚ)) ∧",
        "    (c.region.val = 1 → c.multipliers.headD 0 ≤ (84537/10000 : ℚ)) := by",
        "  norm_num [certificates]",
        "",
        "#print axioms all_filters_valid",
        "#print axioms all_certificates_valid",
        "#print axioms all_regions_present",
        "#print axioms first_multiplier_caps",
        "",
        "end SubsetSum.FilterData",
        "",
    ]
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text("\n".join(lines), encoding="utf-8")
    print(f"Verified source blob {blob}; generated {len(filters)} filters and {len(certs)} certificates")


if __name__ == "__main__":
    main()
