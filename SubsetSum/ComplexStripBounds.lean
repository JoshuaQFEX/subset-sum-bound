/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Complex-strip groundwork for the continuous filter moment proof.
The lemmas here are exact analytic inequalities, not numerical quadrature
certificates and not yet the 430 moment bounds.
-/
import Mathlib
import SubsetSum.FilterFunctions

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace SubsetSum.AnalyticFilters
noncomputable section

/-- Complex cosine is bounded by the real hyperbolic envelope of its
    imaginary part. The identity for cos(x + iy) reduces this to the
    elementary real sine/cosine bounds. -/
theorem complex_cos_norm_le_hyperbolic (z : ℂ) :
    ‖Complex.cos z‖ ≤ Real.cosh z.im + |Real.sinh z.im| := by
  rw [Complex.cos_eq]
  calc
    ‖Complex.cos (z.re : ℂ) * Complex.cosh (z.im : ℂ) -
        Complex.sin (z.re : ℂ) * Complex.sinh (z.im : ℂ) * Complex.I‖ ≤
        ‖Complex.cos (z.re : ℂ) * Complex.cosh (z.im : ℂ)‖ +
        ‖Complex.sin (z.re : ℂ) * Complex.sinh (z.im : ℂ) * Complex.I‖ :=
      norm_sub_le _ _
    _ = |Real.cos z.re| * |Real.cosh z.im| +
        |Real.sin z.re| * |Real.sinh z.im| := by
      simp [Complex.ofReal_cos, Complex.ofReal_sin, Complex.ofReal_cosh,
        Complex.ofReal_sinh, norm_mul]
    _ ≤ Real.cosh z.im + |Real.sinh z.im| := by
      have hc : |Real.cosh z.im| = Real.cosh z.im :=
        abs_of_pos (Real.cosh_pos _)
      have hcos : |Real.cos z.re| ≤ 1 := Real.abs_cos_le_one _
      have hsin : |Real.sin z.re| ≤ 1 := Real.abs_sin_le_one _
      rw [hc]
      nlinarith [
        mul_le_mul_of_nonneg_right hcos (Real.cosh_pos z.im).le,
        mul_le_mul_of_nonneg_right hsin (abs_nonneg (Real.sinh z.im))]

/-- The hyperbolic envelope itself has a simple exact exponential upper
    bound. This intentionally uses a factor two to keep the proof elementary. -/
theorem hyperbolic_envelope_le_exp (y : ℝ) :
    Real.cosh y + |Real.sinh y| ≤ 2 * Real.exp |y| := by
  have hy : 0 ≤ Real.exp |y| := (Real.exp_pos _).le
  have hcosh : Real.cosh y ≤ Real.exp |y| := by
    rw [← Real.cosh_abs]
    have h := Real.cosh_le_exp_half_sq |y|
    have harg : |y| ^ 2 / 2 ≤ |y| + |y| ^ 2 := by positivity
    have hrough : Real.exp (|y| ^ 2 / 2) ≤ Real.exp (|y| + |y| ^ 2) :=
      Real.exp_le_exp.mpr harg
    exact (h.trans hrough).trans (by
      have hnonneg : 0 ≤ |y| := abs_nonneg y
      have hsq : 0 ≤ |y| ^ 2 := sq_nonneg _
      nlinarith [Real.exp_pos |y|])
  have hsinh : |Real.sinh y| ≤ Real.exp |y| := by
    rw [Real.abs_sinh]
    have h := Real.cosh_add_sinh |y|
    have hnonneg : 0 ≤ Real.cosh |y| := (Real.cosh_pos _).le
    nlinarith [Real.sinh_nonneg_iff.mpr (abs_nonneg y), Real.exp_pos |y|]
  nlinarith

end
end SubsetSum.AnalyticFilters
