# Lean formalisation: scope and reproduction

**Author:** Joshua Wharton, QFEX  
**Email:** joshua@qfex.com  
Prepared with ChatGPT, 20 October 2026.

## What this development establishes

This is a Lean 4 formalisation of substantial components of the conditional
Subset Sum refinement. It is **not an end-to-end formal proof of a Subset Sum
solver running in `O(2^(0.487676 n))`**. In particular, no theorem here asserts
that a concrete implementation has that runtime.

The distinction between a theorem's hypotheses and its conclusion is part of
the public interface. Original moment bounds appear as hypotheses such as
`hbase`; they are not silently asserted as new global axioms.

## Proof map

| Module | Formal content | Main declarations |
|---|---|---|
| `SubsetSum/Parameters.lean` | Exact real rational parameters; transferred scalar margins; multiplier, error and exponent budgets | `certified_margins`, `multiplier_sum_budget`, `error_exponent`, `pure_exponent_gap` |
| `SubsetSum/LogBounds.lean` | Real-logarithm Taylor approximation with a proved analytic remainder, obtained from mathlib's complex-log theorem | `real_log_taylor_bound`, `log_interval` |
| `SubsetSum/Numerics.lean` | Rational logarithm enclosures, actual binary-entropy bounds, all alias inequalities and auxiliary size inequalities | `log_two_bounds`, `entropy_a_bounds`, `entropy_two_a_bounds`, `entropy_half_sub_a_bounds`, `alias_constraints` |
| `SubsetSum/CertificateTransfer.lean` | Sampling-fraction bounds, low/band domination, exact exponent shifts, tail estimate, and genuine measure-integral transfer | `sampling_low_bounds`, `low_domination`, `band_domination`, `band_shift`, `moment_shift`, `transferred_moment` |
| `SubsetSum/Asymptotics.lean` | Absorption of sublinear additive exponent overhead, including `C*n^0.7 + K*log n` | `exp2_absorption`, `concrete_refined_bound` |
| `SubsetSum/Decision.lean` | Finite-subset definitions, exact alias cancellation, isolated-witness sum, and deterministic decision/error thresholds | `alias_subtraction`, `isolated_solution_sum`, `zero_rejected`, `unit_detected`, `subtraction_error` |
| `SubsetSum/Refinement.lean` | Application of the numerical budgets to conditional moment bounds, including the concrete low region and the exact bounded-band identity | `regional_moment_transfer`, `low_moment_refinement`, `bounded_moment_identity` |

All modules are imported by `SubsetSum.lean`. The files retain the author's
name, affiliation and contact details in their headers.

### Logarithms and the alias inequalities

`entropy` is defined using `Real.log`; it is not an uninterpreted function
whose numerical values are supplied as hypotheses. The proof derives rational
intervals from the analytic Taylor theorem and range reduction. Proof-producing
`norm_num` and linear arithmetic check the rational consequences.

The five tight alias inequalities are proved with an additional strict margin
of `10^(-8)`. The remaining alias and auxiliary conditions are proved strictly.
The Lean result deliberately uses a more conservative margin than the sharper
interval reported by the separate Python checker. The guard loss is smaller
than `10^(-8)` as well.

No Python output, floating-point estimate or external oracle is used as a proof
of these Lean propositions.

### Certificate transfer

`moment` is an actual Bochner integral over a measure space, with the
nonnegative weight and integrability requirements stated in the relevant
inequality theorems. `exp2 x` is proved equal to `(2 : Real)^x`.

The low-region domination includes the interval between the new and old
boundaries; it does not incorrectly assume that the sampling fraction is one
throughout the old low region. The bounded-region multiplier adjustment is
proved to cancel the variable-dependent exponent change. The tail transfer is
controlled by a pointwise score bound.

The theorem `coarse_score_bound` proves the final estimate `|w| <= 256` from the
listed bounds on its component scores. The earlier derivation of those bounds
from the 43 specific trigonometric filters is not instantiated in Lean here.
Likewise, the generic transfer theorems do not themselves prove the original
430 moment inequalities or the transcribed limits on their multipliers.

### Asymptotic conclusion

For arbitrary real constants `C` and `K`, `concrete_refined_bound` proves

```
2 ^ ((tau + 20*epsilon)*n + C*n^0.7 + K*log n)
    = O(2 ^ (targetExponent*n))
```

as natural `n` tends to infinity, with the exact constants
`tau = 0.48767595`, `epsilon = 10^(-11)`, and
`targetExponent = 0.487676`.

This is a growth theorem for real-valued functions. Applying it to a program
still requires a proof that the program's operation count satisfies the
appropriate bound. That runtime premise has not been formalised here.

### Decision identities

The decision module defines sums over **actual subsets of `Fin n`**, with
integer weights. It proves that the modular phase sum minus the non-exact
alias sum is the exact target phase sum. A unique witness reduces the sum to
its phase. The threshold lemmas prove rejection of zero and detection of a
unit-norm sum under an absolute error at most `1/4`.

These are deterministic identities. They do not assert that random isolation
succeeds or that the implemented checksum estimator attains the required
accuracy with the paper's probability and operation count.

## What remains outside the formalisation

The unformalised dependencies include the original filter-specific moment
inequalities and their analytic certificates; finite-circle convergence and
its application to the filters; the checksum tables and estimator with their
probability and resource bounds; isolation probabilities; the deficiency,
coverage and work analysis of the alias algorithm; and the capped word-RAM
implementation with an every-random-outcome runtime guarantee.

Consequently, this development strengthens the verification of the refinement
but does not remove the conditional status of the full algorithmic claim.
A successful build must not be described as verification of the complete paper
or as a verified new best Subset Sum algorithm.

## Reproduce

The checked toolchain is `leanprover/lean4:v4.24.0`. The mathlib dependency is
pinned to commit `f897ebcf72cd16f89ab4577d0c826cd14afaafc7` in `lakefile.toml`.
From the repository root, with elan installed:

```sh
lake update
lake exe cache get
lake build
lake env lean Audit.lean
```

`lake update` and the cache step need network access. The source proofs are
then compiled by Lean. The independent numerical checker remains available:

```sh
python3 verify.py
```

The GitHub Actions workflow [Lean proof](.github/workflows/lean.yml) repeats
these checks. Its logs identify the exact tested commit and contain both the
build result and the output of `#print axioms` for the principal theorems.

## Trust boundary

The project rejects `sorry`, `admit`, custom `axiom` declarations and
`native_decide` in its Lean sources. `Audit.lean` reports logical dependencies
for the principal results. Standard Lean foundations such as `propext`,
`Classical.choice` and `Quot.sound` are distinguished from an unproved
problem-specific premise. Explicit hypotheses on original integrals remain
necessary even when the corresponding theorem has only standard logical
axioms in its dependency report.

The proof-producing tactics are checked by Lean's kernel. This repository
does not claim to have rebuilt and independently audited all of mathlib or
the Lean compiler. Downloaded mathlib cache files and the pinned toolchain
are part of the normal build environment.
