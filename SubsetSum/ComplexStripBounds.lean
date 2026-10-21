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

/-- The hyperbolic envelope equals an exponential exactly. -/
theorem hyperbolic_envelope_eq_exp (y : ℝ) :
    Real.cosh y + |Real.sinh y| = Real.exp |y| := by
  rw [← Real.cosh_abs, Real.abs_sinh, Real.cosh_eq, Real.sinh_eq]
  ring


/-- A single complex cosine is bounded by an exponential in the absolute
    imaginary part. -/
theorem complex_cos_norm_le_exp_abs_im (z : ℂ) :
    ‖Complex.cos z‖ ≤ Real.exp |z.im| := by
  calc
    ‖Complex.cos z‖ ≤ Real.cosh z.im + |Real.sinh z.im| :=
      complex_cos_norm_le_hyperbolic z
    _ = Real.exp |z.im| := hyperbolic_envelope_eq_exp z.im

/-- Scaling a complex argument by a natural frequency scales its imaginary
    part by the same nonnegative factor. -/
theorem complex_cos_nat_mul_norm_le_exp (n : ℕ) (z : ℂ) :
    ‖Complex.cos ((n : ℂ) * z)‖ ≤ Real.exp ((n : ℝ) * |z.im|) := by
  have him : ((n : ℂ) * z).im = (n : ℝ) * z.im := by simp
  calc
    ‖Complex.cos ((n : ℂ) * z)‖ ≤ Real.exp |((n : ℂ) * z).im| :=
      complex_cos_norm_le_exp_abs_im _
    _ = Real.exp ((n : ℝ) * |z.im|) := by
      rw [him, abs_mul, abs_of_nonneg (Nat.cast_nonneg n)]

/-- Complexification of the finite cosine series used by the filter table. -/
def complexCosineSeries : List ℚ → ℕ → ℂ → ℂ
  | [], _, _ => 0
  | a :: as, k, z =>
      ((a : ℝ) : ℂ) * Complex.cos ((k : ℂ) * z) +
        complexCosineSeries as (k + 1) z

/-- Strip envelope for a finite cosine series. It follows directly from the
    coefficient cap, the single-cosine exponential bound, and the triangle
    inequality; no numerical integration is used. -/
theorem complexCosineSeries_norm_bound (as : List ℚ)
    (ha : ∀ a ∈ as, |a| ≤ 2) (k : ℕ) (z : ℂ) :
    ‖complexCosineSeries as k z‖ ≤
      2 * (as.length : ℝ) *
        Real.exp (((k + as.length : ℕ) : ℝ) * |z.im|) := by
  induction as generalizing k with
  | nil =>
      simp [complexCosineSeries]
  | cons a as ih =>
      have ha' : |(a : ℝ)| ≤ 2 := by exact_mod_cast ha a (by simp)
      have ht := ih (fun b hb => ha b (List.mem_cons_of_mem a hb)) (k + 1) z
      have hσ : 0 ≤ |z.im| := abs_nonneg _
      have hfreqNat : k ≤ k + (as.length + 1) := by omega
      have hfreq : (k : ℝ) * |z.im| ≤
          ((k + (as.length + 1) : ℕ) : ℝ) * |z.im| := by
        exact mul_le_mul_of_nonneg_right (by exact_mod_cast hfreqNat) hσ
      have hexp := Real.exp_le_exp.mpr hfreq
      have hterm : ‖((a : ℝ) : ℂ) * Complex.cos ((k : ℂ) * z)‖ ≤
          2 * Real.exp ((k : ℝ) * |z.im|) := by
        rw [norm_mul, Complex.norm_ofReal]
        calc
          |(a : ℝ)| * ‖Complex.cos ((k : ℂ) * z)‖ ≤
              2 * ‖Complex.cos ((k : ℂ) * z)‖ :=
            mul_le_mul_of_nonneg_right ha' (norm_nonneg _)
          _ ≤ 2 * Real.exp ((k : ℝ) * |z.im|) :=
            mul_le_mul_of_nonneg_left (complex_cos_nat_mul_norm_le_exp k z)
              (by norm_num)
      have hfreqEq :
          (((k + 1) + as.length : ℕ) : ℝ) =
            ((k + (as.length + 1) : ℕ) : ℝ) := by
        exact_mod_cast (show (k + 1) + as.length = k + (as.length + 1) by omega)
      rw [hfreqEq] at ht
      calc
        ‖complexCosineSeries (a :: as) k z‖ ≤
            ‖((a : ℝ) : ℂ) * Complex.cos ((k : ℂ) * z)‖ +
              ‖complexCosineSeries as (k + 1) z‖ := norm_add_le _ _
        _ ≤ 2 * Real.exp ((k : ℝ) * |z.im|) +
              2 * (as.length : ℝ) *
                Real.exp (((k + (as.length + 1) : ℕ) : ℝ) * |z.im|) :=
          add_le_add hterm ht
        _ ≤ 2 * Real.exp (((k + (as.length + 1) : ℕ) : ℝ) * |z.im|) +
              2 * (as.length : ℝ) *
                Real.exp (((k + (as.length + 1) : ℕ) : ℝ) * |z.im|) := by
          exact add_le_add
            (mul_le_mul_of_nonneg_left hexp (by norm_num))
            le_rfl
        _ = 2 * ((a :: as).length : ℝ) *
              Real.exp (((k + (a :: as).length : ℕ) : ℝ) * |z.im|) := by
          simp only [List.length_cons]
          push_cast
          ring

end
end SubsetSum.AnalyticFilters
