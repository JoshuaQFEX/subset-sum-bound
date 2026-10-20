# Lean verification record

**Author:** Joshua Wharton, QFEX, joshua@qfex.com  
**Date:** 20 October 2026

## Successful checked revision

- Proof-source commit: [`f6a13ec1c3f33b7525ec566ea3f35c033cdd688d`](https://github.com/JoshuaQFEX/subset-sum-bound/commit/f6a13ec1c3f33b7525ec566ea3f35c033cdd688d).
- Workflow run: [Lean proof, run 39421123050](https://github.com/JoshuaQFEX/subset-sum-bound/actions/runs/39421123050).
- Job: [`verify`, 118622021218](https://github.com/JoshuaQFEX/subset-sum-bound/actions/runs/39421123050/job/118622021218).
- Result: **success**.
- Toolchain: `leanprover/lean4:v4.24.0`.
- Mathlib revision: `f897ebcf72cd16f89ab4577d0c826cd14afaafc7`.

The following all completed successfully: the source-gap scan, `lake build`,
`lake env lean Audit.lean`, and the independent `python3 verify.py` run.
All seven project modules and the root import compiled. The build emitted
two unused-variable warnings; there were no compilation errors.

The subsequent documentation changes do not modify the checked Lean sources.
This record identifies a specific successful run, rather than claiming that
all future revisions will pass.

## Principal-theorem dependency audit

For each of the following declarations, the actual `#print axioms` output
was `[propext, Classical.choice, Quot.sound]`:

```text
SubsetSum.certified_margins
SubsetSum.pure_exponent_gap
SubsetSum.low_domination
SubsetSum.band_domination
SubsetSum.band_shift
SubsetSum.coarse_score_bound
SubsetSum.moment_shift
SubsetSum.transferred_moment
SubsetSum.real_log_taylor_bound
SubsetSum.alias_constraints
SubsetSum.concrete_refined_bound
SubsetSum.alias_subtraction
SubsetSum.isolated_solution_sum
SubsetSum.zero_rejected
SubsetSum.unit_detected
SubsetSum.regional_moment_transfer
SubsetSum.low_moment_refinement
SubsetSum.bounded_moment_identity
```

No `sorryAx` or problem-specific axiom appeared in those dependency reports.
The source scan also found no `sorry`, `admit`, custom `axiom` declaration or
`native_decide` in the project Lean files.

**This does not eliminate explicit theorem hypotheses.** For example,
`transferred_moment` still requires an original moment bound and
integrability assumptions. The absence of extra logical axioms does not
prove those hypotheses.

## Interpretation

The build verifies the formal statements in this repository. It does not
verify the complete Subset Sum algorithm, instantiate all original filter
certificates, or prove the operation count of a word-RAM implementation.
The exact scope and remaining dependencies are in
[FORMALIZATION.md](FORMALIZATION.md). The mathematical paper therefore
retains its conditional status.
