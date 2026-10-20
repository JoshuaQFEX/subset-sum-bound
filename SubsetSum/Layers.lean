/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT.
Finite counting statements for distinct fixed-cardinality subset sums.
-/
import SubsetSum.Support

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace SubsetSum
namespace Layers
noncomputable section
open Finset Support
variable {n : ℕ}

def layerSupport (w : Fin n → ℤ) (V : Finset (Fin n)) (k : ℕ) : Finset ℤ :=
  (V.powersetCard k).image (weightSum w)

@[simp] lemma mem_layerSupport (w : Fin n → ℤ) (V : Finset (Fin n)) (k : ℕ) (x : ℤ) :
    x ∈ layerSupport w V k ↔ ∃ S, S ⊆ V ∧ S.card = k ∧ weightSum w S = x := by
  classical
  simp [layerSupport, Finset.mem_powersetCard, and_assoc]

lemma layer_card_le_choose (w : Fin n → ℤ) (V : Finset (Fin n)) (k : ℕ) :
    (layerSupport w V k).card ≤ V.card.choose k := by
  simpa [layerSupport] using Finset.card_image_le (s := V.powersetCard k) (f := weightSum w)

lemma weightSum_difference (w : Fin n → ℤ) {S W : Finset (Fin n)} (hW : W ⊆ S) :
    weightSum w (S \ W) = weightSum w S - weightSum w W := by
  have hd : Disjoint (S \ W) W := Finset.sdiff_disjoint
  have hu : (S \ W) ∪ W = S := Finset.sdiff_union_of_subset hW
  have h : weightSum w (S \ W) + weightSum w W = weightSum w S := by
    rw [← hu]
    simp only [weightSum, Finset.sum_union hd]
  omega

/-- The covering inequality counts every chosen t-set through its (t-k)-subsets. -/
theorem covering_count (w : Fin n → ℤ) (V : Finset (Fin n)) (k t : ℕ) (hkt : k ≤ t) :
    (layerSupport w V t).card * t.choose (t - k) ≤
      ∑ W ∈ V.powersetCard (t - k), (layerSupport w (V \ W) k).card := by
  classical
  let X := ↥(layerSupport w V t)
  let rep (x : X) : Finset (Fin n) :=
    Classical.choose ((mem_layerSupport w V t x.val).1 x.property)
  have hr (x : X) : rep x ⊆ V ∧ (rep x).card = t ∧ weightSum w (rep x) = x.val :=
    Classical.choose_spec ((mem_layerSupport w V t x.val).1 x.property)
  let D : Finset (Σ _x : X, Finset (Fin n)) :=
    Finset.univ.sigma (fun x => (rep x).powersetCard (t - k))
  let E : Finset (Σ _W : Finset (Fin n), ℤ) :=
    (V.powersetCard (t - k)).sigma (fun W => layerSupport w (V \ W) k)
  let encode (d : Σ _x : X, Finset (Fin n)) : Σ _W : Finset (Fin n), ℤ :=
    ⟨d.2, d.1.val - weightSum w d.2⟩
  have hi : Function.Injective encode := by
    rintro ⟨x, W⟩ ⟨y, Z⟩ he
    have hW := congrArg Sigma.fst he
    have hv := congrArg (fun e : Σ _W : Finset (Fin n), ℤ => e.2) he
    dsimp [encode] at hW hv
    have hxy : x = y := Subtype.ext (by rw [hW] at hv; omega)
    subst y
    subst Z
    rfl
  have hsub : D.image encode ⊆ E := by
    intro e he
    obtain ⟨d, hd, rfl⟩ := Finset.mem_image.mp he
    have hW := (Finset.mem_powersetCard.mp (Finset.mem_sigma.mp hd).2)
    have hWV : d.2 ⊆ V := hW.1.trans (hr d.1).1
    apply Finset.mem_sigma.mpr
    refine ⟨Finset.mem_powersetCard.mpr ⟨hWV, hW.2⟩, ?_⟩
    apply (mem_layerSupport w (V \ d.2) k _).2
    refine ⟨rep d.1 \ d.2, ?_, ?_, ?_⟩
    · intro i hi
      exact Finset.mem_sdiff.mpr ⟨(hr d.1).1 (Finset.mem_sdiff.mp hi).1,
        (Finset.mem_sdiff.mp hi).2⟩
    · rw [Finset.card_sdiff hW.1, (hr d.1).2.1, hW.2]
      omega
    · rw [weightSum_difference w hW.1, (hr d.1).2.2]
  have hD : D.card = (layerSupport w V t).card * t.choose (t - k) := by
    calc
      D.card = ∑ x : X, ((rep x).powersetCard (t - k)).card := by
        simp [D, Finset.card_sigma]
      _ = ∑ _x : X, t.choose (t - k) := by
        apply Finset.sum_congr rfl
        intro x _
        simp [Finset.card_powersetCard, (hr x).2.1]
      _ = _ := by simp [X]
  calc
    _ = D.card := hD.symm
    _ = (D.image encode).card := (Finset.card_image_of_injective D hi).symm
    _ ≤ E.card := Finset.card_le_card hsub
    _ = _ := by simp [E, Finset.card_sigma]

/-- Complementing a k-set bijects its sum values with the complementary layer. -/
theorem complement_layer (w : Fin n → ℤ) (V : Finset (Fin n)) (k : ℕ) (hk : k ≤ V.card) :
    layerSupport w V (V.card - k) =
      (layerSupport w V k).image (fun x => weightSum w V - x) := by
  classical
  ext x
  constructor
  · intro hx
    obtain ⟨S, hS, hcard, he⟩ := (mem_layerSupport w V _ x).1 hx
    have hc : (V \ S).card = k := by rw [Finset.card_sdiff hS, hcard]; omega
    refine Finset.mem_image.mpr ⟨weightSum w (V \ S),
      (mem_layerSupport w V k _).2 ⟨V \ S, Finset.sdiff_subset, hc, rfl⟩, ?_⟩
    rw [weightSum_difference w hS]
    omega
  · intro hx
    obtain ⟨y, hy, he⟩ := Finset.mem_image.mp hx
    obtain ⟨S, hS, hcard, hsum⟩ := (mem_layerSupport w V k y).1 hy
    refine (mem_layerSupport w V _ x).2 ⟨V \ S, Finset.sdiff_subset, ?_, ?_⟩
    · rw [Finset.card_sdiff hS, hcard]
    · rw [weightSum_difference w hS, hsum]
      exact he

theorem complement_layer_card (w : Fin n → ℤ) (V : Finset (Fin n)) (k : ℕ)
    (hk : k ≤ V.card) :
    (layerSupport w V (V.card - k)).card = (layerSupport w V k).card := by
  rw [complement_layer w V k hk]
  apply Finset.card_image_of_injective
  intro x y he
  dsimp only at he
  omega

end
end Layers
end SubsetSum
