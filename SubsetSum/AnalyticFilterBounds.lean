/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Analytic groundwork for the remaining filter-integral proof.
These are real-axis trigonometric bounds; they do not claim to prove
the continuous moment inequalities or the complex-strip quadrature bounds.
-/
import Mathlib
import SubsetSum.FilterData

set_option autoImplicit false

namespace SubsetSum.AnalyticFilterBounds

/-- A finite cosine polynomial with frequencies 1 through m. This is a
    mathematical real-valued function, not an executable approximation. -/
noncomputable def cosinePolynomial (a : ℕ → ℝ) (m : ℕ) (x : ℝ) : ℝ :=
  ∑ j ∈ Finset.range m, a j * Real.cos ((j + 1 : ℕ) * x)

/-- On the real axis, the absolute value is bounded by the coefficient
    one-norm. This is the first elementary estimate needed before treating
    the analytic strip and trapezoidal quadrature error. -/
theorem cosinePolynomial_abs_le_coeff_sum
    (a : ℕ → ℝ) (m : ℕ) (x : ℝ) :
    |cosinePolynomial a m x| ≤ ∑ j ∈ Finset.range m, |a j| := by
  unfold cosinePolynomial
  calc
    |∑ j ∈ Finset.range m, a j * Real.cos ((j + 1 : ℕ) * x)| ≤
        ∑ j ∈ Finset.range m, |a j * Real.cos ((j + 1 : ℕ) * x)| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ j ∈ Finset.range m, |a j| := by
      apply Finset.sum_le_sum
      intro j hj
      rw [abs_mul]
      exact mul_le_of_le_one_right (abs_nonneg (a j)) (Real.abs_cos_le_one _)

/-- If every coefficient has magnitude at most C, the real-axis polynomial
    is bounded by m*C. -/
theorem cosinePolynomial_abs_le
    (a : ℕ → ℝ) (m : ℕ) (x C : ℝ)
    (hC : 0 ≤ C)
    (ha : ∀ j ∈ Finset.range m, |a j| ≤ C) :
    |cosinePolynomial a m x| ≤ m * C := by
  calc
    |cosinePolynomial a m x| ≤ ∑ j ∈ Finset.range m, |a j| :=
      cosinePolynomial_abs_le_coeff_sum a m x
    _ ≤ ∑ _j ∈ Finset.range m, C := by
      apply Finset.sum_le_sum
      intro j hj
      exact ha j hj
    _ = m * C := by simp

/-- Specialisation to any eight-term coefficient sequence with cap 2.
    This lemma retains the coefficient bound as an explicit hypothesis;
    it does not itself extract coefficients from the concrete filter table. -/
theorem concrete_filter_real_axis_envelope
    (a : ℕ → ℝ) (x : ℝ)
    (ha : ∀ j ∈ Finset.range 8, |a j| ≤ 2) :
    |cosinePolynomial a 8 x| ≤ 16 := by
  have h := cosinePolynomial_abs_le a 8 x 2 (by norm_num) ha
  norm_num at h ⊢
  exact h

end SubsetSum.AnalyticFilterBounds
