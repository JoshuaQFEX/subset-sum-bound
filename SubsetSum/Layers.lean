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
  have h := Finset.sum_sdiff (f := w) hW
  change weightSum w (S \ W) + weightSum w W = weightSum w S at h
  omega

lemma card_difference {S W : Finset (Fin n)} (hW : W ⊆ S) :
    (S \ W).card = S.card - W.card := by
  rw [Finset.card_sdiff, Finset.inter_eq_left.mpr hW]

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
    · rw [card_difference hW.1, (hr d.1).2.1, hW.2]
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
    have hc : (V \ S).card = k := by rw [card_difference hS, hcard]; omega
    refine Finset.mem_image.mpr ⟨weightSum w (V \ S),
      (mem_layerSupport w V k _).2 ⟨V \ S, Finset.sdiff_subset, hc, rfl⟩, ?_⟩
    rw [weightSum_difference w hS]
    omega
  · intro hx
    obtain ⟨y, hy, he⟩ := Finset.mem_image.mp hx
    obtain ⟨S, hS, hcard, hsum⟩ := (mem_layerSupport w V k y).1 hy
    refine (mem_layerSupport w V _ x).2 ⟨V \ S, Finset.sdiff_subset, ?_, ?_⟩
    · rw [card_difference hS, hcard]
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

theorem support_union_layers (w : Fin n → ℤ) (V : Finset (Fin n)) :
    sumSupport w V = (Finset.range (V.card + 1)).biUnion (layerSupport w V) := by
  classical
  ext x
  constructor
  · intro hx
    obtain ⟨S, hS, he⟩ := (mem_sumSupport w V x).1 hx
    refine Finset.mem_biUnion.mpr ⟨S.card, ?_, (mem_layerSupport w V _ x).2 ⟨S, hS, rfl, he⟩⟩
    exact Finset.mem_range.mpr (Nat.lt_succ_of_le (Finset.card_le_card hS))
  · intro hx
    obtain ⟨k, _, hk⟩ := Finset.mem_biUnion.mp hx
    obtain ⟨S, hS, _, he⟩ := (mem_layerSupport w V k x).1 hk
    exact (mem_sumSupport w V x).2 ⟨S, hS, he⟩

/-- One layer of size no greater than half the block contains enough distinct sums. -/
theorem good_layer (w : Fin n → ℤ) (V : Finset (Fin n)) :
    ∃ t : ℕ, 2 * t ≤ V.card ∧
      (sumSupport w V).card ≤ (V.card + 1) * (layerSupport w V t).card := by
  classical
  obtain ⟨j, hj, hmax⟩ := Finset.exists_max_image (Finset.range (V.card + 1))
    (fun k => (layerSupport w V k).card) ⟨0, by simp⟩
  have hjV : j ≤ V.card := Nat.le_of_lt_succ (Finset.mem_range.mp hj)
  have hbound : (sumSupport w V).card ≤ (V.card + 1) * (layerSupport w V j).card := by
    calc
      _ = ((Finset.range (V.card + 1)).biUnion (layerSupport w V)).card := by
        rw [support_union_layers]
      _ ≤ ∑ k ∈ Finset.range (V.card + 1), (layerSupport w V k).card := Finset.card_biUnion_le
      _ ≤ ∑ _k ∈ Finset.range (V.card + 1), (layerSupport w V j).card :=
        Finset.sum_le_sum hmax
      _ = _ := by simp [Nat.mul_comm]
  by_cases hh : 2 * j ≤ V.card
  · exact ⟨j, hh, hbound⟩
  · refine ⟨V.card - j, by omega, ?_⟩
    rwa [complement_layer_card w V j hjV]

/-- Counting larger samples through one representative of each distinct k-sum. -/
theorem sampling_count (w : Fin n → ℤ) (V : Finset (Fin n)) (k s : ℕ) (hks : k ≤ s) :
    (layerSupport w V k).card * (V.card - k).choose (s - k) ≤
      ∑ S ∈ V.powersetCard s, (layerSupport w S k).card := by
  classical
  let X := ↥(layerSupport w V k)
  let rep (x : X) : Finset (Fin n) :=
    Classical.choose ((mem_layerSupport w V k x.val).1 x.property)
  have hr (x : X) : rep x ⊆ V ∧ (rep x).card = k ∧ weightSum w (rep x) = x.val :=
    Classical.choose_spec ((mem_layerSupport w V k x.val).1 x.property)
  let D : Finset (Σ _x : X, Finset (Fin n)) :=
    Finset.univ.sigma (fun x => (V \ rep x).powersetCard (s - k))
  let E : Finset (Σ _S : Finset (Fin n), ℤ) :=
    (V.powersetCard s).sigma (fun S => layerSupport w S k)
  let encode (d : Σ _x : X, Finset (Fin n)) : Σ _S : Finset (Fin n), ℤ :=
    ⟨rep d.1 ∪ d.2, d.1.val⟩
  have hi : Set.InjOn encode (D : Set (Σ _x : X, Finset (Fin n))) := by
    rintro ⟨x, A⟩ hA ⟨y, B⟩ hB he
    have hU := congrArg Sigma.fst he
    have hval := congrArg (fun e : Σ _S : Finset (Fin n), ℤ => e.2) he
    dsimp [encode] at hU hval
    have hxy : x = y := Subtype.ext hval
    subst y
    have hAS := (Finset.mem_powersetCard.mp (Finset.mem_sigma.mp hA).2).1
    have hBS := (Finset.mem_powersetCard.mp (Finset.mem_sigma.mp hB).2).1
    have hAB : A = B := by
      ext i
      have ha : i ∈ A → i ∉ rep x := fun h => (Finset.mem_sdiff.mp (hAS h)).2
      have hb : i ∈ B → i ∉ rep x := fun h => (Finset.mem_sdiff.mp (hBS h)).2
      have hu := Finset.ext_iff.mp hU i
      simp only [Finset.mem_union] at hu
      tauto
    subst B
    rfl
  have hsub : D.image encode ⊆ E := by
    intro e he
    obtain ⟨d, hd, rfl⟩ := Finset.mem_image.mp he
    have hA := Finset.mem_powersetCard.mp (Finset.mem_sigma.mp hd).2
    have hdis : Disjoint (rep d.1) d.2 := by
      apply Finset.disjoint_left.mpr
      intro i hi hA'
      exact (Finset.mem_sdiff.mp (hA.1 hA')).2 hi
    apply Finset.mem_sigma.mpr
    constructor
    · apply Finset.mem_powersetCard.mpr
      constructor
      · exact Finset.union_subset (hr d.1).1 (hA.1.trans Finset.sdiff_subset)
      · rw [Finset.card_union_of_disjoint hdis, (hr d.1).2.1, hA.2]
        omega
    · exact (mem_layerSupport w _ k _).2
        ⟨rep d.1, Finset.subset_union_left, (hr d.1).2.1, (hr d.1).2.2⟩
  have hD : D.card = (layerSupport w V k).card * (V.card - k).choose (s - k) := by
    calc
      D.card = ∑ x : X, ((V \ rep x).powersetCard (s - k)).card := by
        simp [D, Finset.card_sigma]
      _ = ∑ _x : X, (V.card - k).choose (s - k) := by
        apply Finset.sum_congr rfl
        intro x _
        rw [Finset.card_powersetCard, card_difference (hr x).1, (hr x).2.1]
      _ = _ := by simp [X]
  calc
    _ = D.card := hD.symm
    _ = (D.image encode).card := (Finset.card_image_iff.mpr hi).symm
    _ ≤ E.card := Finset.card_le_card hsub
    _ = _ := by simp [E, Finset.card_sigma]

end
end Layers
end SubsetSum
