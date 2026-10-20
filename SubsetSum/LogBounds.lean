/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Analytic bridge for rational logarithm certificates.
-/
import Mathlib.Analysis.SpecialFunctions.Complex.LogBounds
import Mathlib.Tactic

set_option autoImplicit false

namespace SubsetSum
noncomputable section
open Finset

def realLogTaylor (n : ℕ) (x : ℝ) : ℝ :=
  ∑ j ∈ Finset.range n, (-1 : ℝ) ^ (j + 1) * x ^ j / j

lemma logTaylor_cast (n : ℕ) (x : ℝ) :
    Complex.logTaylor n (x : ℂ) = (realLogTaylor n x : ℂ) := by
  unfold Complex.logTaylor realLogTaylor
  push_cast
  rfl

/-- Taylor approximation to the REAL logarithm, with a proved remainder bound. -/
theorem real_log_taylor_bound (n : ℕ) {x : ℝ} (hx : |x| < 1) :
    |Real.log (1 + x) - realLogTaylor (n + 1) x| ≤
      |x| ^ (n + 1) * (1 - |x|)⁻¹ / (n + 1) := by
  have hpos : 0 ≤ 1 + x := by have := (abs_lt.mp hx).1; linarith
  have h := Complex.norm_log_sub_logTaylor_le n (z := (x : ℂ)) (by simpa using hx)
  rw [logTaylor_cast] at h
  have hlog : Complex.log (1 + (x : ℂ)) = (Real.log (1 + x) : ℂ) := by
    rw [Complex.ofReal_log hpos]
    push_cast
    rfl
  rw [hlog, ← Complex.ofReal_sub] at h
  simpa only [Complex.norm_real, Real.norm_eq_abs, Nat.cast_add, Nat.cast_one] using h

/-- A rational interval certificate is accepted only after its analytic premise is proved. -/
theorem log_interval (n : ℕ) (x lo hi : ℝ) (hx : |x| < 1)
    (hl : lo ≤ realLogTaylor (n + 1) x -
      |x| ^ (n + 1) * (1 - |x|)⁻¹ / (n + 1))
    (hu : realLogTaylor (n + 1) x +
      |x| ^ (n + 1) * (1 - |x|)⁻¹ / (n + 1) ≤ hi) :
    lo ≤ Real.log (1 + x) ∧ Real.log (1 + x) ≤ hi := by
  have h := abs_le.mp (real_log_taylor_bound n hx)
  constructor <;> linarith [h.1, h.2]

end
end SubsetSum
