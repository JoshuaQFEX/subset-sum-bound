/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT.
Sign changes act by an explicit bijection of masks and translate sum supports.
-/
import SubsetSum.Support

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace SubsetSum
namespace Signs
noncomputable section
open Finset Support
variable {n : ℕ}

def signedWeights (w : Fin n → ℤ) (F : Finset (Fin n)) : Fin n → ℤ :=
  fun i => if i ∈ F then -w i else w i

def flipMask (S F : Finset (Fin n)) : Finset (Fin n) := (S \ F) ∪ (F \ S)

lemma flipMask_involutive (S F : Finset (Fin n)) : flipMask (flipMask S F) F = S := by
  ext i
  by_cases hS : i ∈ S <;> by_cases hF : i ∈ F <;> simp [flipMask, hS, hF]

lemma flipMask_subset {S F V : Finset (Fin n)} (hS : S ⊆ V) (hF : F ⊆ V) :
    flipMask S F ⊆ V := by
  intro i hi
  rcases Finset.mem_union.mp hi with hi | hi
  · exact hS (Finset.mem_sdiff.mp hi).1
  · exact hF (Finset.mem_sdiff.mp hi).1

lemma weightSum_indicator (w : Fin n → ℤ) (S : Finset (Fin n)) :
    weightSum w S = ∑ i : Fin n, if i ∈ S then w i else 0 := by
  classical
  unfold weightSum
  rw [← Finset.sum_filter]
  congr 1
  ext i
  simp

/-- This is an exact integer identity, without modular reduction. -/
theorem signed_sum_identity (w : Fin n → ℤ) (F S : Finset (Fin n)) :
    weightSum (signedWeights w F) S + weightSum w F = weightSum w (flipMask S F) := by
  classical
  simp only [weightSum_indicator, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  by_cases hS : i ∈ S <;> by_cases hF : i ∈ F <;>
    simp [signedWeights, flipMask, hS, hF]

/-- Flipping a fixed mask permutes the subsets of the supplied coordinate block. -/
theorem flipMask_bijective (V F : Finset (Fin n)) (hF : F ⊆ V) :
    Function.Bijective (fun S : ↥V.powerset =>
      (⟨flipMask S.val F, Finset.mem_powerset.mpr
        (flipMask_subset (Finset.mem_powerset.mp S.property) hF)⟩ : ↥V.powerset)) := by
  constructor
  · intro S T h
    have hv := congrArg Subtype.val h
    have he := congrArg (fun X => flipMask X F) hv
    simp only [flipMask_involutive] at he
    exact Subtype.ext he
  · intro T
    refine ⟨⟨flipMask T.val F, Finset.mem_powerset.mpr
      (flipMask_subset (Finset.mem_powerset.mp T.property) hF)⟩, ?_⟩
    apply Subtype.ext
    exact flipMask_involutive T.val F

lemma signed_sum_restrict (w : Fin n → ℤ) (F V S : Finset (Fin n)) (hS : S ⊆ V) :
    weightSum (signedWeights w F) S = weightSum (signedWeights w (F ∩ V)) S := by
  classical
  apply Finset.sum_congr rfl
  intro i hi
  simp [signedWeights, hS hi]

lemma support_sign_restrict (w : Fin n → ℤ) (F V : Finset (Fin n)) :
    sumSupport (signedWeights w F) V = sumSupport (signedWeights w (F ∩ V)) V := by
  ext x
  simp only [mem_sumSupport]
  constructor
  · rintro ⟨S, hS, he⟩
    exact ⟨S, hS, (signed_sum_restrict w F V S hS).symm.trans he⟩
  · rintro ⟨S, hS, he⟩
    exact ⟨S, hS, (signed_sum_restrict w F V S hS).trans he⟩

lemma signed_support_of_subset (w : Fin n → ℤ) (F V : Finset (Fin n)) (hF : F ⊆ V) :
    sumSupport (signedWeights w F) V =
      (sumSupport w V).image (fun x => x - weightSum w F) := by
  ext x
  constructor
  · intro hx
    obtain ⟨S, hS, he⟩ := (mem_sumSupport _ V x).1 hx
    refine Finset.mem_image.mpr ⟨weightSum w (flipMask S F),
      (mem_sumSupport w V _).2 ⟨flipMask S F, flipMask_subset hS hF, rfl⟩, ?_⟩
    have hs := signed_sum_identity w F S
    omega
  · intro hx
    obtain ⟨y, hy, he⟩ := Finset.mem_image.mp hx
    obtain ⟨S, hS, hsum⟩ := (mem_sumSupport w V y).1 hy
    refine (mem_sumSupport _ V x).2 ⟨flipMask S F, flipMask_subset hS hF, ?_⟩
    have hs := signed_sum_identity w F (flipMask S F)
    rw [flipMask_involutive] at hs
    omega

/-- Sign changes translate the actual support, for an arbitrary sign mask. -/
theorem signed_support_translation (w : Fin n → ℤ) (F V : Finset (Fin n)) :
    sumSupport (signedWeights w F) V =
      (sumSupport w V).image (fun x => x - weightSum w (F ∩ V)) := by
  rw [support_sign_restrict]
  exact signed_support_of_subset w (F ∩ V) V Finset.inter_subset_right

theorem signed_support_card (w : Fin n → ℤ) (F V : Finset (Fin n)) :
    (sumSupport (signedWeights w F) V).card = (sumSupport w V).card := by
  rw [signed_support_translation, Finset.card_image_iff]
  intro x _ y _ he
  dsimp only at he
  omega

/-- Deficiency is invariant under every choice of sign changes. -/
theorem deficiency_sign_invariant (w : Fin n → ℤ) (F V : Finset (Fin n)) :
    deficiency (signedWeights w F) V = deficiency w V := by
  unfold deficiency
  rw [signed_support_card]

end
end Signs
end SubsetSum
