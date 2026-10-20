# Verified milestone: complete finite certificate data

**Author:** Joshua Wharton, QFEX  
**Email:** joshua@qfex.com  
**Date:** 20 October 2026

## Result

All 43 filters and all 430 finite certificate records now have compiled Lean proofs. The full project build, both dependency audits, the proof-gap scan and the independent Python checks passed in [workflow run 39487903482](https://github.com/JoshuaQFEX/subset-sum-bound/actions/runs/39487903482).

The workflow checked source revision `977ec512fc7a66bcbf21f7aff978d6fa7b5e1a77`, generated the exact finite tables, compiled them, and published the checked files in [commit 6c4273c40a35f8abccb143db38290a7471368ec9](https://github.com/JoshuaQFEX/subset-sum-bound/commit/6c4273c40a35f8abccb143db38290a7471368ec9). The [machine-readable verification record](verification/finite-data.json) records the source revision and SHA-256 hashes of all 45 generated Lean files. Subsequent documentation and CI changes do not alter these proof files.

This completes the finite-data milestone. It does **not** establish the original continuous moment integrals or an end-to-end Subset Sum running-time theorem.

## What the closed theorem proves

The principal declaration is [`SubsetSum.FilterData.complete_finite_certificate_data`](SubsetSum/FilterData.lean). It has no numerical hypotheses and proves the following facts about the concrete tables:

| Obligation | Verified statement |
|---|---|
| Filter dimensions | Each filter has eight coefficients in each of its two lists. |
| Filter bounds | Each coefficient has absolute value at most 2, and every power parameter is between 1 and 2. |
| Certificate dimensions | Each multiplier vector has exactly the number of region rows plus comparison rows. |
| Multiplier bounds | Every multiplier is nonnegative and each vector sums to at most 418.36. |
| Comparison indices | Indices lie in `Fin 43`, and no comparison points back to its selected filter. |
| Region admissibility | The first multiplier is at least 1 in the low region; otherwise its product with the lower region boundary is at least 1. |
| First-multiplier caps | The low-region cap is 17.211; the first bounded-region cap is 8.4537. |
| Complete coverage | The certificate index sequence is exactly all 43 filters times all ten regions, in order. This rules out missing, duplicated or extra filter/region pairs. |

The interface is:

```lean
theorem complete_finite_certificate_data :
    filters.length = 43 ∧ certificates.length = 430 ∧
    (∀ f ∈ filters, ValidFilter f) ∧
    (∀ c ∈ certificates, ValidCertificate c) ∧
    (∀ c ∈ certificates, FirstCap c) ∧
    certificates.map (fun c => (c.filterIndex.val, c.region.val)) = expectedIndices
```

The predicates are defined in [Base.lean](SubsetSum/FilterData/Base.lean). The aggregate theorem combines the independently proved row statements. It does not assume that a Python test or an external numerical oracle returned true.

## Why the compiler failures stopped

The previous generator used `norm_num` on whole rational records. Compiler logs showed remaining `True` goals in certificate proofs and interpreter recursion failures in the first three filter proofs. The new generator uses `decide +kernel` on explicitly decidable finite propositions. The kernel performs the reduction directly; no native-evaluation fallback is used.

The invalid `List.Forall.cons` aggregation has also been replaced by proved list-membership lemmas. Aggregation reuses the row proofs instead of asking a tactic to renormalise the entire table.

The successful workflow first compiled filters 0, 1 and 2, then built the entire project. It did not stop after the initial smoke test.

## Verification evidence

[Full build output](verification/finite-data-build.txt), [formerly failing filters](verification/finite-data-smoke.txt), [finite-data dependency audit](verification/finite-data-axioms.txt), [core dependency audit](verification/core-axioms.txt), and [independent numerical checks](verification/numeric-check.txt) are committed alongside the source.

All seven finite-data declarations printed by `FiniteDataAudit.lean`, including the complete aggregate theorem and two negative regression tests, reported only:

```text
[propext, Classical.choice, Quot.sound]
```

The workflow rejected unfinished proofs, custom axiom declarations, native proof evaluation and unexpected logical dependencies. The usual Lean kernel and mathlib foundations remain the trust base.

The tables come from `a-kapila/maths-proofs`, commit `44c34961b56784c220a6e913cc068d57dc37c5a3`, file `subset-sum/PROOF_0.4877.tex`. The generator checks the exact input Git blob hash `526c2622038a633cbc1bef9ef5e3f4514843cd91` before extracting any values. Source authentication establishes provenance; the Lean proofs establish the finite inequalities.

## Reproduce

The generated proof files are committed; regeneration is not required for a normal build.

```sh
lake update
lake exe cache get
lake build
lake env lean FiniteDataAudit.lean
lake env lean Audit.lean
python3 verify.py
```

Lean is pinned to `leanprover/lean4:v4.24.0`; mathlib is pinned to `f897ebcf72cd16f89ab4577d0c826cd14afaafc7`.

To regenerate from a local copy of the exact pinned manuscript:

```sh
python3 tools/generate_filter_data.py /path/to/PROOF_0.4877.tex SubsetSum/FilterData.lean
lake build
lake env lean FiniteDataAudit.lean
```

## Remaining boundary

The original 430 continuous moment inequalities are **not** consequences of these finite-data predicates alone. Their integrands, convolution estimates and quadrature remainder bounds still need formal proofs. The checksum estimator, alias coverage/resource analysis and capped word-RAM implementation also need their remaining correctness and cost arguments connected end to end. The overall `O(2^(0.487676 n))` claim therefore remains conditional.
