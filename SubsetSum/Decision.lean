/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Exact finite-subset identities and error thresholds.
The probabilistic isolation lemma and runtime of an implementation are not asserted here.
-/
import SubsetSum.CertificateTransfer

set_option autoImplicit false

namespace SubsetSum
noncomputable section
open Finset

variable {n : ℕ}

def weightSum (w : Fin n → ℤ) (I : Finset (Fin n)) : ℤ := ∑ i ∈ I, w i

def HasSolution (w : Fin n → ℤ) (t : ℤ) : Prop :=
  ∃ I : Finset (Fin n), weightSum w I = t

def exactPhaseSum (w : Fin n → ℤ) (t : ℤ) (phase : Finset (Fin n) → ℂ) : ℂ :=
  ∑ I : Finset (Fin n), if weightSum w I = t then phase I else 0

def modularPhaseSum (w : Fin n → ℤ) (t P : ℤ) (phase : Finset (Fin n) → ℂ) : ℂ :=
  ∑ I : Finset (Fin n), if weightSum w I % P = t % P then phase I else 0

def aliasPhaseSum (w : Fin n → ℤ) (t P : ℤ) (phase : Finset (Fin n) → ℂ) : ℂ :=
  ∑ I : Finset (Fin n),
    if weightSum w I % P = t % P ∧ weightSum w I ≠ t then phase I else 0

/-- Modular matches minus non-exact aliases are exactly the desired target sum. -/
theorem alias_subtraction (w : Fin n → ℤ) (t P : ℤ) (phase : Finset (Fin n) → ℂ) :
    modularPhaseSum w t P phase - aliasPhaseSum w t P phase = exactPhaseSum w t phase := by
  unfold modularPhaseSum aliasPhaseSum exactPhaseSum
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro I _
  by_cases he : weightSum w I = t
  · simp [he]
  · by_cases hm : weightSum w I % P = t % P <;> simp [he, hm]

theorem no_solution_sum (w : Fin n → ℤ) (t : ℤ) (phase : Finset (Fin n) → ℂ)
    (hno : ¬ HasSolution w t) : exactPhaseSum w t phase = 0 := by
  have h : ∀ I : Finset (Fin n), weightSum w I ≠ t := by
    intro I he
    exact hno ⟨I, he⟩
  simp [exactPhaseSum, h]

/-- After successful isolation, the exact sum is the single witness's phase. -/
theorem isolated_solution_sum (w : Fin n → ℤ) (t : ℤ)
    (phase : Finset (Fin n) → ℂ) (I : Finset (Fin n))
    (hI : weightSum w I = t)
    (hunique : ∀ J : Finset (Fin n), weightSum w J = t → J = I) :
    exactPhaseSum w t phase = phase I := by
  unfold exactPhaseSum
  rw [Finset.sum_eq_single I]
  · simp [hI]
  · intro J _ hJI
    have hne : weightSum w J ≠ t := by
      intro he
      exact hJI (hunique J he)
    simp [hne]
  · intro hnot
    exact (hnot (Finset.mem_univ I)).elim

theorem zero_rejected {estimate exact : ℂ} (hz : exact = 0)
    (he : ‖estimate - exact‖ ≤ (1 / 4 : ℝ)) : ‖estimate‖ < (1 / 2 : ℝ) := by
  subst exact
  simp only [sub_zero] at he
  linarith

theorem unit_detected {estimate exact : ℂ} (hu : ‖exact‖ = 1)
    (he : ‖estimate - exact‖ ≤ (1 / 4 : ℝ)) : (1 / 2 : ℝ) ≤ ‖estimate‖ := by
  have h := norm_sub_norm_le exact estimate
  rw [norm_sub_rev exact estimate, hu] at h
  linarith

/-- Arithmetic errors from the checksum and alias estimates combine additively. -/
theorem subtraction_error {V A Vest Aest : ℂ} {eV eA : ℝ}
    (hV : ‖Vest - V‖ ≤ eV) (hA : ‖Aest - A‖ ≤ eA) :
    ‖(Vest - Aest) - (V - A)‖ ≤ eV + eA := by
  have hid : (Vest - Aest) - (V - A) = (Vest - V) - (Aest - A) := by ring
  rw [hid]
  exact (norm_sub_le _ _).trans (add_le_add hV hA)

end
end SubsetSum
