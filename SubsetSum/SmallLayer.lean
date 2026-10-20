/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT.
The averaged small-layer lemma is derived from finite counting, with actual
subset-sum supports and actual real logarithmic deficiencies.
-/
import SubsetSum.Sampling

set_option autoImplicit false
set_option maxHeartbeats 4000000

namespace SubsetSum
namespace SmallLayer
noncomputable section
open Finset Support Layers Sampling
variable {n : ℕ}

lemma sum_complement (V : Finset (Fin n)) (r : ℕ) (hr : r ≤ V.card)
    (f : Finset (Fin n) → ℝ) :
    (∑ W ∈ V.powersetCard r, f (V \ W)) =
      ∑ A ∈ V.powersetCard (V.card - r), f A := by
  classical
  refine Finset.sum_bij (fun W _ => V \ W) ?_ ?_ ?_ ?_
  · intro W hW
    obtain ⟨hWV, hcard⟩ := Finset.mem_powersetCard.mp hW
    exact Finset.mem_powersetCard.mpr
      ⟨Finset.sdiff_subset, by rw [card_difference hWV, hcard]⟩
  · intro W hW Z hZ he
    have hWV := (Finset.mem_powersetCard.mp hW).1
    have hZV := (Finset.mem_powersetCard.mp hZ).1
    have h := congrArg (fun A => V \ A) he
    simpa only [Finset.sdiff_sdiff_eq_self hWV, Finset.sdiff_sdiff_eq_self hZV] using h
  · intro A hA
    obtain ⟨hAV, hcard⟩ := Finset.mem_powersetCard.mp hA
    refine ⟨V \ A, Finset.mem_powersetCard.mpr ⟨Finset.sdiff_subset, ?_⟩,
      Finset.sdiff_sdiff_eq_self hAV⟩
    rw [card_difference hAV, hcard]
    omega
  · intro W _
    rfl

lemma average_complement (V : Finset (Fin n)) (r : ℕ) (hr : r ≤ V.card)
    (f : Finset (Fin n) → ℝ) :
    sampleAverage V r (fun W => f (V \ W)) = sampleAverage V (V.card - r) f := by
  unfold sampleAverage finiteMean
  rw [sum_complement V r hr f]
  simp only [Finset.card_powersetCard, Nat.choose_symm hr]

/-- Normalised version of the proved covering count. -/
theorem layer_density_covering (w : Fin n → ℤ) (V : Finset (Fin n))
    (k t : ℕ) (hkt : k ≤ t) (htv : t ≤ V.card) :
    layerDensity w V t ≤ sampleAverage V (t - k) (fun W => layerDensity w (V \ W) k) := by
  have ht := choose_pos_real htv
  have hr := choose_pos_real (show t - k ≤ V.card by omega)
  have hq := choose_pos_real (show k ≤ V.card - (t - k) by omega)
  have htk : t - (t - k) = k := by omega
  have hc : (V.card.choose t : ℝ) * (t.choose (t - k) : ℝ) =
      (V.card.choose (t - k) : ℝ) * ((V.card - (t - k)).choose k : ℝ) := by
    exact_mod_cast (show V.card.choose t * t.choose (t - k) =
      V.card.choose (t - k) * (V.card - (t - k)).choose k by
        simpa only [htk] using Nat.choose_mul htv (Nat.sub_le t k))
  have hcount : ((layerSupport w V t).card : ℝ) * (t.choose (t - k) : ℝ) ≤
      ∑ W ∈ V.powersetCard (t - k), ((layerSupport w (V \ W) k).card : ℝ) := by
    exact_mod_cast covering_count w V k t hkt
  have hs : (∑ W ∈ V.powersetCard (t - k), layerDensity w (V \ W) k) =
      (∑ W ∈ V.powersetCard (t - k), ((layerSupport w (V \ W) k).card : ℝ)) /
        ((V.card - (t - k)).choose k : ℝ) := by
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro W hW
    have hw := Finset.mem_powersetCard.mp hW
    simp only [layerDensity, card_difference hw.1, hw.2]
  unfold sampleAverage finiteMean
  rw [hs, Finset.card_powersetCard, div_div]
  unfold layerDensity
  apply (div_le_div_iff₀ ht (mul_pos hq hr)).2
  have hm := mul_le_mul_of_nonneg_right hcount ht.le
  have he := congrArg (fun x : ℝ => ((layerSupport w V t).card : ℝ) * x) hc
  nlinarith

lemma choose_monotone_below_half (v t k : ℕ) (htk : t ≤ k) (hk : 2 * k ≤ v) :
    v.choose t ≤ v.choose k := by
  have h : ∀ d : ℕ, t + d ≤ v / 2 → v.choose t ≤ v.choose (t + d) := by
    intro d
    induction d with
    | zero => simp
    | succ d ih =>
      intro hd
      have hp := ih (by omega)
      have hs := Nat.choose_le_succ_of_lt_half_left (n := v) (r := t + d) (by omega)
      exact hp.trans (by simpa [Nat.add_assoc] using hs)
  have he : t + (k - t) = k := by omega
  simpa only [he] using h (k - t) (by omega)

def supportFraction (w : Fin n → ℤ) (V : Finset (Fin n)) : ℝ :=
  (sumSupport w V).card / (2 : ℝ) ^ V.card

lemma layerDensity_lower (w : Fin n → ℤ) (S : Finset (Fin n)) (k : ℕ)
    (hk : k ≤ S.card) : 1 / (S.card.choose k : ℝ) ≤ layerDensity w S k := by
  have hne : (layerSupport w S k).Nonempty :=
    (Finset.powersetCard_nonempty.mpr hk).image (weightSum w)
  have hcard : (1 : ℝ) ≤ (layerSupport w S k).card := by
    exact_mod_cast Finset.card_pos.mpr hne
  exact div_le_div_of_nonneg_right hcard (choose_pos_real hk).le

lemma supportFraction_le_good_layer (w : Fin n → ℤ) (V : Finset (Fin n)) (t : ℕ)
    (ht : t ≤ V.card)
    (hgood : (sumSupport w V).card ≤ (V.card + 1) * (layerSupport w V t).card) :
    supportFraction w V / (V.card + 1 : ℝ) ≤ layerDensity w V t := by
  have hc := Nat.mul_le_mul hgood (Nat.choose_le_two_pow V.card t)
  have hcr : ((sumSupport w V).card : ℝ) * (V.card.choose t : ℝ) ≤
      ((V.card + 1 : ℕ) : ℝ) * (layerSupport w V t).card * (2 : ℝ) ^ V.card := by
    exact_mod_cast hc
  unfold supportFraction layerDensity
  rw [div_div]
  apply (div_le_div_iff₀ (by positivity) (choose_pos_real ht)).2
  push_cast at hcr
  nlinarith

/-- The local small-layer inequality before averaging over v-subsets of a larger block. -/
theorem local_small_layer (w : Fin n → ℤ) (V : Finset (Fin n)) (k σ : ℕ)
    (hkσ : 2 * k ≤ σ) (hσv : 2 * σ ≤ V.card + 2 * k)
    (hsize : σ.choose k * V.card.choose k ≤ 2 ^ V.card) :
    supportFraction w V / (V.card + 1 : ℝ) ≤
      sampleAverage V σ (fun S => layerDensity w S k) := by
  have hks : k ≤ σ := by omega
  have hsv : σ ≤ V.card := by omega
  obtain ⟨t, ht, hgood⟩ := good_layer w V
  have htv : t ≤ V.card := by omega
  by_cases hkt : k ≤ t
  · have hσa : σ ≤ V.card - (t - k) := by omega
    calc
      _ ≤ layerDensity w V t := supportFraction_le_good_layer w V t htv hgood
      _ ≤ sampleAverage V (t - k) (fun W => layerDensity w (V \ W) k) :=
        layer_density_covering w V k t hkt htv
      _ ≤ sampleAverage V (t - k)
          (fun W => sampleAverage (V \ W) σ (fun S => layerDensity w S k)) := by
        apply finiteMean_mono
        intro W hW
        have hw := Finset.mem_powersetCard.mp hW
        apply layer_density_sampling w (V \ W) k σ hks
        rw [card_difference hw.1, hw.2]
        exact hσa
      _ = sampleAverage V (V.card - (t - k))
          (fun A => sampleAverage A σ (fun S => layerDensity w S k)) :=
        average_complement V (t - k) (by omega)
          (fun A => sampleAverage A σ (fun S => layerDensity w S k))
      _ = _ := average_of_averages V σ (V.card - (t - k)) hσa (Nat.sub_le _ _)
        (fun S => layerDensity w S k)
  · have htk : t ≤ k := by omega
    have hkv : 2 * k ≤ V.card := by omega
    have hchoose := choose_monotone_below_half V.card t k htk hkv
    have hL := (layer_card_le_choose w V t).trans hchoose
    have hcard : (sumSupport w V).card ≤ (V.card + 1) * V.card.choose k :=
      hgood.trans (Nat.mul_le_mul_left _ hL)
    have hcardR : ((sumSupport w V).card : ℝ) ≤
        (V.card + 1 : ℝ) * (V.card.choose k : ℝ) := by exact_mod_cast hcard
    have hsizeR : (σ.choose k : ℝ) * (V.card.choose k : ℝ) ≤ (2 : ℝ) ^ V.card := by
      exact_mod_cast hsize
    have hσk := choose_pos_real hks
    have hP : (0 : ℝ) < (2 : ℝ) ^ V.card := by positivity
    have hV : (0 : ℝ) < (V.card + 1 : ℝ) := by positivity
    calc
      _ ≤ (V.card.choose k : ℝ) / (2 : ℝ) ^ V.card := by
        unfold supportFraction
        rw [div_div]
        apply (div_le_div_iff₀ (mul_pos hP hV) hP).2
        nlinarith [mul_le_mul_of_nonneg_right hcardR hP.le]
      _ ≤ 1 / (σ.choose k : ℝ) := by
        apply (div_le_div_iff₀ hP hσk).2
        nlinarith
      _ = sampleAverage V σ (fun _ => 1 / (σ.choose k : ℝ)) := by
        exact (finiteMean_const _ (Finset.powersetCard_nonempty.mpr hsv) _).symm
      _ ≤ _ := by
        apply finiteMean_mono
        intro S hS
        have hs := (Finset.mem_powersetCard.mp hS).2
        have h := layerDensity_lower w S k (by rw [hs]; exact hks)
        simpa only [hs] using h

lemma finiteMean_div {α : Type*} (S : Finset α) (f : α → ℝ) (c : ℝ) :
    finiteMean S (fun x => f x / c) = finiteMean S f / c := by
  unfold finiteMean
  rw [← Finset.sum_div]
  simp only [div_div]
  rw [mul_comm c (S.card : ℝ)]

/-- Corollary D, expressed first as an exact average of support fractions. -/
theorem averaged_small_layer_fraction (w : Fin n → ℤ) (M : Finset (Fin n)) (k σ v : ℕ)
    (hkσ : 2 * k ≤ σ) (hσv : 2 * σ ≤ v + 2 * k) (hvM : v ≤ M.card)
    (hsize : σ.choose k * v.choose k ≤ 2 ^ v) :
    sampleAverage M v (supportFraction w) / (v + 1 : ℝ) ≤
      sampleAverage M σ (fun S => layerDensity w S k) := by
  have hsv : σ ≤ v := by omega
  calc
    _ = sampleAverage M v (fun V => supportFraction w V / (v + 1 : ℝ)) :=
      (finiteMean_div _ _ _).symm
    _ ≤ sampleAverage M v (fun V => sampleAverage V σ (fun S => layerDensity w S k)) := by
      apply finiteMean_mono
      intro V hV
      have hc := (Finset.mem_powersetCard.mp hV).2
      have h := local_small_layer w V k σ hkσ (by rw [hc]; exact hσv)
        (by rw [hc]; exact hsize)
      simpa only [hc] using h
    _ = _ := average_of_averages M σ v hsv hvM (fun S => layerDensity w S k)

lemma supportFraction_eq_exp_deficiency (w : Fin n → ℤ) (V : Finset (Fin n)) :
    (2 : ℝ) ^ (-deficiency w V) = supportFraction w V := by
  have hpos : (0 : ℝ) < (sumSupport w V).card := by exact_mod_cast support_card_pos w V
  unfold deficiency supportFraction
  rw [neg_sub]
  rw [Real.rpow_sub (by norm_num : (0 : ℝ) < 2)]
  have h := Real.rpow_logb (by norm_num : (0 : ℝ) < 2)
    (by norm_num : (2 : ℝ) ≠ 1) hpos
  change (2 : ℝ) ^ (Real.log (sumSupport w V).card / Real.log 2) = (sumSupport w V).card at h
  rw [h, Real.rpow_natCast]

/-- The full averaged small-layer lemma with its actual exponential-deficiency term. -/
theorem averaged_small_layer (w : Fin n → ℤ) (M : Finset (Fin n)) (k σ v : ℕ)
    (hkσ : 2 * k ≤ σ) (hσv : 2 * σ ≤ v + 2 * k) (hvM : v ≤ M.card)
    (hsize : σ.choose k * v.choose k ≤ 2 ^ v) :
    sampleAverage M v (fun V => (2 : ℝ) ^ (-deficiency w V)) / (v + 1 : ℝ) ≤
      sampleAverage M σ (fun S => layerDensity w S k) := by
  simp only [supportFraction_eq_exp_deficiency]
  exact averaged_small_layer_fraction w M k σ v hkσ hσv hvM hsize

end
end SmallLayer
end SubsetSum
