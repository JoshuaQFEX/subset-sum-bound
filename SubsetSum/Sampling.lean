/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT.
Exact finite averages for sampling coordinate subsets without replacement.
-/
import SubsetSum.Layers

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace SubsetSum
namespace Sampling
noncomputable section
open Finset Support Layers
variable {n : ℕ}

def finiteMean {α : Type*} (S : Finset α) (f : α → ℝ) : ℝ :=
  (∑ x ∈ S, f x) / S.card

def sampleAverage (V : Finset (Fin n)) (s : ℕ) (f : Finset (Fin n) → ℝ) : ℝ :=
  finiteMean (V.powersetCard s) f

def layerDensity (w : Fin n → ℤ) (V : Finset (Fin n)) (k : ℕ) : ℝ :=
  (layerSupport w V k).card / (V.card.choose k : ℝ)

lemma choose_pos_real {v k : ℕ} (h : k ≤ v) : (0 : ℝ) < v.choose k := by
  exact_mod_cast Nat.choose_pos h

lemma finiteMean_mono {α : Type*} (S : Finset α) (f g : α → ℝ)
    (h : ∀ x ∈ S, f x ≤ g x) : finiteMean S f ≤ finiteMean S g := by
  exact div_le_div_of_nonneg_right (Finset.sum_le_sum h) (by positivity)

lemma finiteMean_const {α : Type*} (S : Finset α) (hS : S.Nonempty) (c : ℝ) :
    finiteMean S (fun _ => c) = c := by
  have hcard : (S.card : ℝ) ≠ 0 := by exact_mod_cast hS.card_pos.ne'
  simp [finiteMean, hcard]

lemma subfamily_filter (V A : Finset (Fin n)) (s : ℕ) (hA : A ⊆ V) :
    A.powersetCard s = (V.powersetCard s).filter (fun S => S ⊆ A) := by
  ext S
  simp only [Finset.mem_filter, Finset.mem_powersetCard]
  constructor
  · rintro ⟨hS, hc⟩
    exact ⟨⟨hS.trans hA, hc⟩, hS⟩
  · rintro ⟨⟨_, hc⟩, hS⟩
    exact ⟨hS, hc⟩

/-- Count the a-subsets containing a fixed smaller subset. -/
theorem extension_count (V S : Finset (Fin n)) (a : ℕ)
    (hS : S ⊆ V) (hSa : S.card ≤ a) :
    ((V.powersetCard a).filter (fun A => S ⊆ A)).card =
      (V.card - S.card).choose (a - S.card) := by
  classical
  let D := (V \ S).powersetCard (a - S.card)
  let E := (V.powersetCard a).filter (fun A => S ⊆ A)
  have hi : Set.InjOn (fun A => S ∪ A) (D : Set (Finset (Fin n))) := by
    intro A hA B hB he
    have ha := (Finset.mem_powersetCard.mp hA).1
    have hb := (Finset.mem_powersetCard.mp hB).1
    ext i
    have hia : i ∈ A → i ∉ S := fun h => (Finset.mem_sdiff.mp (ha h)).2
    have hib : i ∈ B → i ∉ S := fun h => (Finset.mem_sdiff.mp (hb h)).2
    have h := Finset.ext_iff.mp he i
    simp only [Finset.mem_union] at h
    tauto
  have he : D.image (fun A => S ∪ A) = E := by
    ext A
    constructor
    · intro hA
      obtain ⟨B, hB, rfl⟩ := Finset.mem_image.mp hA
      have hb := Finset.mem_powersetCard.mp hB
      have hd : Disjoint S B := by
        apply Finset.disjoint_left.mpr
        intro i hi hj
        exact (Finset.mem_sdiff.mp (hb.1 hj)).2 hi
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_powersetCard.mpr ⟨?_, ?_⟩, Finset.subset_union_left⟩
      · exact Finset.union_subset hS (hb.1.trans Finset.sdiff_subset)
      · rw [Finset.card_union_of_disjoint hd, hb.2]
        omega
    · intro hA
      obtain ⟨ha, hs⟩ := Finset.mem_filter.mp hA
      obtain ⟨hav, hcard⟩ := Finset.mem_powersetCard.mp ha
      refine Finset.mem_image.mpr ⟨A \ S, Finset.mem_powersetCard.mpr ⟨?_, ?_⟩, ?_⟩
      · intro i hi
        exact Finset.mem_sdiff.mpr ⟨hav (Finset.mem_sdiff.mp hi).1, (Finset.mem_sdiff.mp hi).2⟩
      · rw [card_difference hs, hcard]
      · ext i
        have himp : i ∈ S → i ∈ A := fun h => hs h
        simp only [Finset.mem_union, Finset.mem_sdiff]
        tauto
  calc
    _ = E.card := rfl
    _ = (D.image (fun A => S ∪ A)).card := by rw [he]
    _ = D.card := Finset.card_image_iff.mpr hi
    _ = _ := by rw [Finset.card_powersetCard, card_difference hS]

/-- Double counting the weighted incidence relation S ⊆ A ⊆ V. -/
theorem nested_sampling_sum (V : Finset (Fin n)) (s a : ℕ)
    (hsa : s ≤ a) (hav : a ≤ V.card) (f : Finset (Fin n) → ℝ) :
    (∑ A ∈ V.powersetCard a, ∑ S ∈ A.powersetCard s, f S) =
      ((V.card - s).choose (a - s) : ℝ) * ∑ S ∈ V.powersetCard s, f S := by
  classical
  calc
    _ = ∑ A ∈ V.powersetCard a, ∑ S ∈ V.powersetCard s, if S ⊆ A then f S else 0 := by
      apply Finset.sum_congr rfl
      intro A hA
      rw [subfamily_filter V A s (Finset.mem_powersetCard.mp hA).1, Finset.sum_filter]
    _ = ∑ S ∈ V.powersetCard s, ∑ A ∈ V.powersetCard a, if S ⊆ A then f S else 0 :=
      Finset.sum_comm
    _ = ∑ S ∈ V.powersetCard s, ((V.card - s).choose (a - s) : ℝ) * f S := by
      apply Finset.sum_congr rfl
      intro S hS
      have hs := Finset.mem_powersetCard.mp hS
      have hSa : S.card ≤ a := by rw [hs.2]; exact hsa
      rw [← Finset.sum_filter]
      simp only [Finset.sum_const, nsmul_eq_mul]
      rw [extension_count V S a hs.1 hSa, hs.2]
    _ = _ := (Finset.mul_sum ..).symm

/-- Sampling A first and then S inside A gives the uniform law on s-subsets of V. -/
theorem average_of_averages (V : Finset (Fin n)) (s a : ℕ)
    (hsa : s ≤ a) (hav : a ≤ V.card) (f : Finset (Fin n) → ℝ) :
    sampleAverage V a (fun A => sampleAverage A s f) = sampleAverage V s f := by
  have ha := choose_pos_real hav
  have hs := choose_pos_real (hsa.trans hav)
  have hAs := choose_pos_real hsa
  have hchoose : (V.card.choose a : ℝ) * (a.choose s : ℝ) =
      (V.card.choose s : ℝ) * ((V.card - s).choose (a - s) : ℝ) := by
    exact_mod_cast Nat.choose_mul hav hsa
  have hinner : (∑ A ∈ V.powersetCard a, sampleAverage A s f) =
      (∑ A ∈ V.powersetCard a, ∑ S ∈ A.powersetCard s, f S) / (a.choose s : ℝ) := by
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro A hA
    simp only [sampleAverage, finiteMean, Finset.card_powersetCard, (Finset.mem_powersetCard.mp hA).2]
  change (∑ A ∈ V.powersetCard a, sampleAverage A s f) / _ = _
  rw [hinner, nested_sampling_sum V s a hsa hav f]
  simp only [sampleAverage, finiteMean, Finset.card_powersetCard]
  field_simp
  nlinarith [congrArg (fun x : ℝ => x * ∑ S ∈ V.powersetCard s, f S) hchoose]

lemma average_layer_density (w : Fin n → ℤ) (V : Finset (Fin n)) (k s : ℕ) :
    sampleAverage V s (fun S => layerDensity w S k) =
      (∑ S ∈ V.powersetCard s, ((layerSupport w S k).card : ℝ)) /
        ((V.card.choose s : ℝ) * (s.choose k : ℝ)) := by
  have hsum : (∑ S ∈ V.powersetCard s, layerDensity w S k) =
      (∑ S ∈ V.powersetCard s, ((layerSupport w S k).card : ℝ)) / (s.choose k : ℝ) := by
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro S hS
    simp only [layerDensity, (Finset.mem_powersetCard.mp hS).2]
  unfold sampleAverage finiteMean
  rw [hsum, Finset.card_powersetCard, div_div]
  rw [mul_comm (s.choose k : ℝ)]

/-- The sampling lemma for the normalised number of distinct fixed-size sums. -/
theorem layer_density_sampling (w : Fin n → ℤ) (V : Finset (Fin n))
    (k s : ℕ) (hks : k ≤ s) (hsv : s ≤ V.card) :
    layerDensity w V k ≤ sampleAverage V s (fun S => layerDensity w S k) := by
  have hk := choose_pos_real (hks.trans hsv)
  have hs := choose_pos_real hsv
  have hsk := choose_pos_real hks
  have hcount : ((layerSupport w V k).card : ℝ) * ((V.card - k).choose (s - k) : ℝ) ≤
      ∑ S ∈ V.powersetCard s, ((layerSupport w S k).card : ℝ) := by
    exact_mod_cast sampling_count w V k s hks
  have hchoose : (V.card.choose s : ℝ) * (s.choose k : ℝ) =
      (V.card.choose k : ℝ) * ((V.card - k).choose (s - k) : ℝ) := by
    exact_mod_cast Nat.choose_mul hsv hks
  rw [average_layer_density]
  unfold layerDensity
  apply (div_le_div_iff₀ hk (mul_pos hs hsk)).2
  rw [hchoose]
  have hm := mul_le_mul_of_nonneg_right hcount hk.le
  nlinarith

end
end Sampling
end SubsetSum
