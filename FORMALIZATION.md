# Lean formalisation: scope and reproduction

**Author:** Joshua Wharton, QFEX  
**Email:** joshua@qfex.com  
Prepared with ChatGPT. Updated 20 October 2026.

## Current status

The project contains compiled Lean proofs of substantial parts of the conditional Subset Sum refinement. The [complete finite-data milestone](FINITE_DATA_MILESTONE.md) now verifies all 43 filters, all 430 certificate records and exact filter/region coverage. The full development passed [workflow run 39487903482](https://github.com/JoshuaQFEX/subset-sum-bound/actions/runs/39487903482).

This is **not yet an end-to-end formal proof of a Subset Sum solver running in `O(2^(0.487676 n))`**. The original continuous moment bounds remain explicit hypotheses of the integral-transfer theorems. No theorem asserts the claimed operation count for a complete concrete implementation.

## Proof map

| Module | Formal content |
|---|---|
| `Parameters.lean` | Exact rational parameters, transferred scalar margins and error/exponent budgets. |
| `LogBounds.lean` | Real-logarithm Taylor approximation with an analytic remainder, obtained from mathlib's complex-log theorem. |
| `Numerics.lean` | Rational enclosures of actual real logarithms and binary entropy; all stated alias side inequalities. |
| `CertificateTransfer.lean` | Sampling-fraction bounds, low/band domination, exponent shifts, tail estimate and measure-integral transfer. |
| `Asymptotics.lean` | Absorption of sublinear additive exponent overhead, including `C*n^0.7 + K*log n`. |
| `Decision.lean` | Actual finite-subset definitions, alias cancellation, isolated-witness sums and deterministic error thresholds. |
| `Refinement.lean` | Concrete numerical budgets applied to conditional moment inequalities. |
| `Isolation.lean` | Finite counting proof of the isolation lemma and its uniform success fraction. |
| `Transformation.lean` | Exact integer-field separation, preservation of solvability and the transformed isolation probability. |
| `Support.lean` | Finite subset-sum supports and their logarithmic deficiencies. |
| `Signs.lean` | Signed-weight and symmetric-difference identities. |
| `Layers.lean` | Finite layer-support counting. |
| `Sampling.lean` | Finite sample averages and their combinatorial identities. |
| `SmallLayer.lean` | Averaged small-layer inequality using actual supports and exponential deficiencies. |
| `FilterData.lean` and `FilterData/` | All 43 concrete filters, 430 concrete finite certificates, their bounds, exact coverage and a closed aggregate theorem. |

All modules are imported by `SubsetSum.lean`. The full build checks these sources, not just the finite-data smoke-test targets.

## Numerical and finite-data results

`entropy` is defined using `Real.log`. The proof derives rational intervals from the Taylor theorem and range reduction. The five tight alias inequalities are proved with a strict additional margin of `10^(-8)`; auxiliary conditions are also proved strictly. No Python output is assumed by these propositions.

The finite-data predicates in `FilterData/Base.lean` express coefficient lengths/bounds, the power-parameter range, multiplier-vector lengths, nonnegative multipliers, the sum budget, comparison-index exclusions and region-specific first-multiplier conditions. Every concrete record is proved using `decide +kernel`. Aggregate proofs reuse the individual results.

`FilterData.complete_finite_certificate_data` is a closed theorem: it has no input assumptions about the numerical data. It includes equality with the complete expected sequence of filter/region pairs, not just a total of 430 rows. Two negative regression tests prove that malformed filter data and negative multiplier data fail the predicates.

See [the milestone record](FINITE_DATA_MILESTONE.md) for the exact statement, provenance and successful audit. These finite bounds are now established in Lean; the original continuous moment inequalities are not.

## Integral-transfer boundary

`moment` is an actual Bochner integral. Nonnegative weights and integrability requirements are stated in the relevant inequalities. `exp2 x` is proved equal to `(2 : Real)^x`.

The low-region argument includes the interval between the new and old boundaries. The bounded-region multiplier adjustment cancels the variable-dependent change. The tail argument is controlled by a pointwise score bound.

`coarse_score_bound` proves the final bound `|w| <= 256` from bounds on component scores. Deriving all those component-score bounds from the concrete trigonometric functions and normalising integrals remains a separate task. Proving coefficient bounds does not itself prove those analytic estimates.

The generic moment-transfer theorems still require the old moment inequalities, such as `hbase`. Their successful compilation proves the stated implications, not the hypotheses supplied to them.

## Asymptotic and algorithmic boundary

For arbitrary real constants `C` and `K`, `concrete_refined_bound` proves the asymptotic growth statement

```text
2 ^ ((tau + 20*epsilon)*n + C*n^0.7 + K*log n)
    = O(2 ^ (targetExponent*n))
```

with `tau = 0.48767595`, `epsilon = 10^(-11)` and `targetExponent = 0.487676`. A proof that a program's operation count is bounded by the left-hand expression remains necessary.

The decision identities use actual subsets of `Fin n` and integer weights. Isolation and the integer transformation are now formalised rather than merely cited. This does not establish that the implemented checksum and alias procedures achieve their required error, coverage and runtime bounds.

Remaining work includes the filter-specific continuous integrals and quadrature error certificates, finite-circle convergence applied to the concrete filters, checksum tables and estimator guarantees, the remaining alias coverage/resource arguments, and the capped word-RAM implementation with an every-execution cost bound. Some supporting combinatorial lemmas are already present, but the complete algorithms are not assembled and proved.

## Reproduction and trust boundary

The toolchain is `leanprover/lean4:v4.24.0`. Mathlib is pinned to `f897ebcf72cd16f89ab4577d0c826cd14afaafc7` in `lakefile.toml`.

```sh
lake update
lake exe cache get
lake build
lake env lean Audit.lean
lake env lean FiniteDataAudit.lean
python3 verify.py
```

The successful finite-data run recorded the exact source revision and SHA-256 hashes in [verification/finite-data.json](verification/finite-data.json). Its full build and dependency logs are committed under `verification/`. The [earlier verification record](LEAN_VERIFICATION.md) is retained as a historical record of the initial seven-module development.

The finite-data dependency audit reports only `propext`, `Classical.choice` and `Quot.sound`. The workflow rejects unfinished proofs, custom axiom declarations and native proof-evaluation shortcuts. Standard Lean and mathlib foundations, the pinned toolchain and its compiled library cache remain part of the normal build environment. The absence of extra logical axioms does not eliminate explicit mathematical hypotheses in other modules.

The paper's conditional status is unchanged. A clean build of this development must not be described as a verified new best Subset Sum algorithm.
