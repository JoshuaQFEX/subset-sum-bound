/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT.
The integer transformation and its isolation probability are proved here.
No algorithmic runtime or checksum accuracy is supplied as a conclusion.
-/
import SubsetSum.Isolation

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace SubsetSum
namespace Isolation
noncomputable section
open Finset

variable {n R : ℕ}

def scale (n R : ℕ) : ℤ := 1 + (n : ℤ) * R

def transformedWeights (w : Fin n → ℤ) (f : Fin n → Fin R) : Fin n → ℤ :=
  fun i => scale n R * w i + tieWeights f i

lemma tie_sum_bounds (f : Fin n → Fin R) (S : Finset (Fin n)) :
    0 ≤ weightSum (tieWeights f) S ∧ weightSum (tieWeights f) S ≤ (n : ℤ) * R := by
  constructor
  · apply Finset.sum_nonneg
    intro i _
    dsimp [tieWeights]
    omega
  · calc
      weightSum (tieWeights f) S ≤ ∑ _i ∈ S, (R : ℤ) := by
        apply Finset.sum_le_sum
        intro i _
        have h := (f i).isLt
        dsimp [tieWeights]
        omega
      _ = (S.card : ℤ) * R := by simp
      _ ≤ (n : ℤ) * R := by
        apply mul_le_mul_of_nonneg_right _ (by positivity)
        exact_mod_cast (show S.card ≤ n by simpa using S.card_le_univ)

lemma transformed_sum (w : Fin n → ℤ) (f : Fin n → Fin R)
    (S : Finset (Fin n)) :
    weightSum (transformedWeights w f) S =
      scale n R * weightSum w S + weightSum (tieWeights f) S := by
  simp [weightSum, transformedWeights, Finset.sum_add_distrib, Finset.mul_sum]

/-- No carry can pass between the original target and the bounded tie-weight field. -/
lemma separated_integer_fields (a t u s B C : ℤ)
    (hu0 : 0 ≤ u) (hu : u ≤ B) (hs0 : 0 ≤ s) (hs : s ≤ B) (hC : B < C) :
    C * a + u = C * t + s ↔ a = t ∧ u = s := by
  have hCp : 0 ≤ C := by omega
  constructor
  · intro he
    have hat : a = t := by
      by_contra hne
      have hsep : a + 1 ≤ t ∨ t + 1 ≤ a := by omega
      rcases hsep with hsep | hsep
      · have hmul := mul_le_mul_of_nonneg_left hsep hCp
        nlinarith
      · have hmul := mul_le_mul_of_nonneg_left hsep hCp
        nlinarith
    exact ⟨hat, by subst a; omega⟩
  · rintro ⟨rfl, rfl⟩
    rfl

/-- Exact equivalence for every transformed target in the declared range. -/
theorem transformed_eq_iff (w : Fin n → ℤ) (f : Fin n → Fin R)
    (t s : ℤ) (hs0 : 0 ≤ s) (hs : s ≤ (n : ℤ) * R) (S : Finset (Fin n)) :
    weightSum (transformedWeights w f) S = scale n R * t + s ↔
      weightSum w S = t ∧ weightSum (tieWeights f) S = s := by
  rw [transformed_sum]
  exact separated_integer_fields _ _ _ _ _ _ (tie_sum_bounds f S).1
    (tie_sum_bounds f S).2 hs0 hs (by dsimp [scale]; omega)

/-- For each fixed random assignment the transformation preserves solvability. -/
theorem transformation_preserves_solution (w : Fin n → ℤ)
    (f : Fin n → Fin R) (t : ℤ) :
    HasSolution w t ↔ ∃ s : ℤ, 0 ≤ s ∧ s ≤ (n : ℤ) * R ∧
      HasSolution (transformedWeights w f) (scale n R * t + s) := by
  constructor
  · rintro ⟨S, hS⟩
    obtain ⟨hu0, hu⟩ := tie_sum_bounds f S
    refine ⟨weightSum (tieWeights f) S, hu0, hu, S, ?_⟩
    rw [transformed_sum, hS]
  · rintro ⟨s, hs0, hs, S, he⟩
    exact ⟨S, ((transformed_eq_iff w f t s hs0 hs S).1 he).1⟩

def solutionFamily (w : Fin n → ℤ) (t : ℤ) : Finset (Finset (Fin n)) := by
  classical
  exact Finset.univ.filter (fun S => weightSum w S = t)

@[simp] lemma mem_solutionFamily (w : Fin n → ℤ) (t : ℤ) (S : Finset (Fin n)) :
    S ∈ solutionFamily w t ↔ weightSum w S = t := by
  classical
  simp [solutionFamily]

lemma solutionFamily_nonempty (w : Fin n → ℤ) (t : ℤ) (h : HasSolution w t) :
    (solutionFamily w t).Nonempty := by
  obtain ⟨S, hS⟩ := h
  exact ⟨S, (mem_solutionFamily w t S).2 hS⟩

/-- Some admissible transformed target has exactly one representing subset. -/
def IsolatedTarget (w : Fin n → ℤ) (t : ℤ) (f : Fin n → Fin R) : Prop :=
  ∃ s : ℤ, 0 ≤ s ∧ s ≤ (n : ℤ) * R ∧
    ∃! S : Finset (Fin n), weightSum (transformedWeights w f) S = scale n R * t + s

theorem unique_minimum_isolates (w : Fin n → ℤ) (t : ℤ) (f : Fin n → Fin R)
    (h : UniqueMinimum (solutionFamily w t) (tieWeights f)) : IsolatedTarget w t f := by
  classical
  obtain ⟨S, hS, huniq⟩ := h
  obtain ⟨hu0, hu⟩ := tie_sum_bounds f S
  have hsol : weightSum w S = t := (mem_solutionFamily w t S).1 hS.1
  refine ⟨weightSum (tieWeights f) S, hu0, hu, S, ?_, ?_⟩
  · exact (transformed_eq_iff w f t _ hu0 hu S).2 ⟨hsol, rfl⟩
  · intro T hT
    obtain ⟨hTsol, hTtie⟩ := (transformed_eq_iff w f t _ hu0 hu T).1 hT
    apply huniq T
    refine ⟨(mem_solutionFamily w t T).2 hTsol, ?_⟩
    intro U hU
    rw [hTtie]
    exact hS.2 U hU

def isolatedAssignments (w : Fin n → ℤ) (t : ℤ) (R : ℕ) : Finset (Fin n → Fin R) := by
  classical
  exact Finset.univ.filter (IsolatedTarget w t)

def isolatedTargetFraction (w : Fin n → ℤ) (t : ℤ) (R : ℕ) : ℚ :=
  (isolatedAssignments w t R).card / (R ^ n : ℕ)

/-- The original paper's isolation guarantee is derived, not imported as a hypothesis. -/
theorem transformed_isolation_probability (w : Fin n → ℤ) (t : ℤ)
    (hsol : HasSolution w t) (R : ℕ) (hR : 0 < R) (hsize : 12 * n ≤ R) :
    (11 / 12 : ℚ) ≤ isolatedTargetFraction w t R := by
  classical
  have h := isolation_eleven_twelfths (solutionFamily w t)
    (solutionFamily_nonempty w t hsol) R hR hsize
  have hsub : goodAssignments n R (solutionFamily w t) ⊆ isolatedAssignments w t R := by
    intro f hf
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, ?_⟩
    exact unique_minimum_isolates w t f (Finset.mem_filter.mp hf).2
  have hcard : ((goodAssignments n R (solutionFamily w t)).card : ℚ) ≤
      (isolatedAssignments w t R).card := by exact_mod_cast Finset.card_le_card hsub
  exact h.trans (div_le_div_of_nonneg_right hcard (by positivity))

end
end Isolation
end SubsetSum
