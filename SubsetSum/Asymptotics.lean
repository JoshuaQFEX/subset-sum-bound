/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Absorption of sublinear exponent overhead.
This is an asymptotic theorem about real functions, not a runtime proof
for an implemented Subset Sum solver.
-/
import SubsetSum.CertificateTransfer
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

set_option autoImplicit false

namespace SubsetSum
noncomputable section
open Filter Asymptotics
open scoped Topology

/-- Any o(n) additive exponent overhead fits inside a strictly larger exponent. -/
theorem exp2_absorption {r : ℕ → ℝ} {a b : ℝ} (hab : a < b)
    (hr : r =o[atTop] (fun n : ℕ => (n : ℝ))) :
    (fun n : ℕ => exp2 (a * n + r n)) =O[atTop]
      (fun n : ℕ => exp2 (b * n)) := by
  rw [isBigO_iff]
  refine ⟨1, ?_⟩
  have he := hr.bound (sub_pos.mpr hab)
  filter_upwards [he] with n hn
  have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  simp only [Real.norm_eq_abs, abs_of_nonneg hn0] at hn
  have hle : r n ≤ (b - a) * n := (le_abs_self _).trans hn
  rw [Real.norm_of_nonneg (exp2_pos _).le, Real.norm_of_nonneg (exp2_pos _).le,
    one_mul]
  apply exp2_mono
  nlinarith

theorem refined_exponential_bound {r : ℕ → ℝ}
    (hr : r =o[atTop] (fun n : ℕ => (n : ℝ))) :
    (fun n : ℕ => (2 : ℝ) ^ ((tau + 20 * epsilon) * n + r n)) =O[atTop]
      (fun n : ℕ => (2 : ℝ) ^ (targetExponent * n)) := by
  simpa only [exp2_eq_rpow] using exp2_absorption pure_exponent_gap.2 hr

/-- Sublinear real powers are o(x), proved by their quotient limit. -/
theorem rpow_sublinear {p : ℝ} (hp : p < 1) :
    (fun x : ℝ => x ^ p) =o[atTop] (fun x : ℝ => x) := by
  apply isLittleO_of_tendsto'
  · filter_upwards [eventually_gt_atTop (0 : ℝ)] with x hx
    intro hzero
    exact (hx.ne' hzero).elim
  · have h := tendsto_rpow_neg_atTop (sub_pos.mpr hp)
    apply h.congr'
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with x hx
    rw [neg_sub, Real.rpow_sub hx, Real.rpow_one]

/-- The two kinds of overhead used by the paper are genuinely sublinear. -/
theorem paper_overhead_sublinear (C K : ℝ) :
    (fun n : ℕ => C * (n : ℝ) ^ (0.7 : ℝ) + K * Real.log (n : ℝ))
      =o[atTop] (fun n : ℕ => (n : ℝ)) := by
  have hp : (fun n : ℕ => (n : ℝ) ^ (0.7 : ℝ)) =o[atTop]
      (fun n : ℕ => (n : ℝ)) :=
    (rpow_sublinear (by norm_num : (0.7 : ℝ) < 1)).comp_tendsto
      tendsto_natCast_atTop_atTop
  have hl : (fun n : ℕ => Real.log (n : ℝ)) =o[atTop]
      (fun n : ℕ => (n : ℝ)) :=
    Real.isLittleO_log_id_atTop.comp_tendsto tendsto_natCast_atTop_atTop
  exact (hp.const_mul_left C).add (hl.const_mul_left K)

/-- Concrete absorption of the paper's n^0.7 and logarithmic exponent overheads. -/
theorem concrete_refined_bound (C K : ℝ) :
    (fun n : ℕ => (2 : ℝ) ^ ((tau + 20 * epsilon) * n +
      (C * (n : ℝ) ^ (0.7 : ℝ) + K * Real.log (n : ℝ)))) =O[atTop]
      (fun n : ℕ => (2 : ℝ) ^ (targetExponent * n)) :=
  refined_exponential_bound (paper_overhead_sublinear C K)

end
end SubsetSum
