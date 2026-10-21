/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Derivation of the actual filter score bound from the concrete coefficients
and normalized circle integrals. No moment bounds are assumed here.
-/
import SubsetSum.FilterFunctions

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace SubsetSum.AnalyticFilters
noncomputable section
open FilterData

def shifted (p q : ℝ → ℝ) (x y : ℝ) : ℝ := p (x + y) + q y
def convolutionMass (p q : ℝ → ℝ) (x : ℝ) : ℝ := normalizer (shifted p q x)
def convolutionWeighted (p q : ℝ → ℝ) (x : ℝ) : ℝ :=
  weightedNumerator (shifted p q x)
def poweredNormalizer (p : ℝ → ℝ) (k : ℝ) : ℝ := normalizer (fun x => k * p x)
def normalizerLog (p q : ℝ → ℝ) : ℝ := log2 (normalizer p * normalizer q)
def scoreL (p q : ℝ → ℝ) (x : ℝ) : ℝ :=
  log2 (convolutionMass p q x) - normalizerLog p q
def scoreB (p q : ℝ → ℝ) (x : ℝ) : ℝ :=
  convolutionWeighted p q x / convolutionMass p q x - normalizerLog p q
def scoreH (p q : ℝ → ℝ) (k : ℝ) : ℝ :=
  log2 (poweredNormalizer p k) + log2 (poweredNormalizer q k) - k * normalizerLog p q
def scoreW (p q : ℝ → ℝ) (k x : ℝ) : ℝ :=
  (2 - k) * scoreB p q x - 2 * scoreL p q x + scoreH p q k

theorem convolutionMass_eq_product (p q : ℝ → ℝ) (x : ℝ) :
    convolutionMass p q x =
      circleAverage (fun y => exp2 (p (x + y)) * exp2 (q y)) := by
  simp only [convolutionMass, normalizer, shifted, exp2_add]

theorem convolutionWeighted_eq_product (p q : ℝ → ℝ) (x : ℝ) :
    convolutionWeighted p q x = circleAverage
      (fun y => exp2 (p (x + y)) * exp2 (q y) * (p (x + y) + q y)) := by
  simp only [convolutionWeighted, weightedNumerator, shifted, exp2_add]

lemma continuous_shifted (p q : ℝ → ℝ) (hp : Continuous p) (hq : Continuous q)
    (x : ℝ) : Continuous (shifted p q x) :=
  (hp.comp (continuous_const.add continuous_id)).add hq

lemma shifted_bound (p q : ℝ → ℝ) (hp : ∀ x, |p x| ≤ 16)
    (hq : ∀ x, |q x| ≤ 16) (x y : ℝ) : |shifted p q x y| ≤ 32 := by
  calc
    |shifted p q x y| ≤ |p (x + y)| + |q y| := abs_add_le _ _
    _ ≤ 16 + 16 := add_le_add (hp _) (hq _)
    _ = 32 := by norm_num

lemma normalizerLog_bound (p q : ℝ → ℝ) (hp : Continuous p) (hq : Continuous q)
    (hpb : ∀ x, |p x| ≤ 16) (hqb : ∀ x, |q x| ≤ 16) :
    |normalizerLog p q| ≤ 32 := by
  have hzp := normalizer_pos p hp 16 hpb
  have hzq := normalizer_pos q hq 16 hqb
  have he : normalizerLog p q = log2 (normalizer p) + log2 (normalizer q) := by
    unfold normalizerLog log2
    rw [Real.log_mul hzp.ne' hzq.ne']
    ring
  rw [he]
  calc
    |log2 (normalizer p) + log2 (normalizer q)| ≤
        |log2 (normalizer p)| + |log2 (normalizer q)| := abs_add_le _ _
    _ ≤ 16 + 16 := add_le_add
      (log_normalizer_bound p hp 16 hpb) (log_normalizer_bound q hq 16 hqb)
    _ = 32 := by norm_num

lemma powered_log_bound (p : ℝ → ℝ) (hp : Continuous p)
    (hpb : ∀ x, |p x| ≤ 16) (k : ℝ) (hk : 0 ≤ k) :
    |log2 (poweredNormalizer p k)| ≤ 16 * k := by
  apply log_normalizer_bound (fun x => k * p x) (continuous_const.mul hp) (16 * k)
  intro x
  rw [abs_mul, abs_of_nonneg hk]
  nlinarith [mul_le_mul_of_nonneg_left (hpb x) hk]

theorem score_component_bounds (p q : ℝ → ℝ) (hp : Continuous p) (hq : Continuous q)
    (hpb : ∀ x, |p x| ≤ 16) (hqb : ∀ x, |q x| ≤ 16)
    (k x : ℝ) (hk : 0 ≤ k) :
    0 < convolutionMass p q x ∧ |scoreL p q x| ≤ 64 ∧
    |scoreB p q x| ≤ 64 ∧ |scoreH p q k| ≤ 64 * k := by
  have hs := continuous_shifted p q hp hq x
  have hsb := shifted_bound p q hpb hqb x
  have hP := normalizer_pos (shifted p q x) hs 32 hsb
  have hPL := log_normalizer_bound (shifted p q x) hs 32 hsb
  have hPB := weighted_average_bound (shifted p q x) hs 32 hsb
  have hZ := normalizerLog_bound p q hp hq hpb hqb
  have hpk := powered_log_bound p hp hpb k hk
  have hqk := powered_log_bound q hq hqb k hk
  refine ⟨hP, ?_, ?_, ?_⟩
  · unfold scoreL
    calc
      |log2 (convolutionMass p q x) - normalizerLog p q| ≤
          |log2 (convolutionMass p q x)| + |normalizerLog p q| :=
        abs_sub_le _ (0 : ℝ) _
      _ ≤ 32 + 32 := add_le_add hPL hZ
      _ = 64 := by norm_num
  · unfold scoreB
    calc
      |convolutionWeighted p q x / convolutionMass p q x - normalizerLog p q| ≤
          |convolutionWeighted p q x / convolutionMass p q x| + |normalizerLog p q| :=
        abs_sub_le _ (0 : ℝ) _
      _ ≤ 32 + 32 := add_le_add hPB hZ
      _ = 64 := by norm_num
  · unfold scoreH
    calc
      |(log2 (poweredNormalizer p k) + log2 (poweredNormalizer q k)) -
          k * normalizerLog p q| ≤
          |log2 (poweredNormalizer p k) + log2 (poweredNormalizer q k)| +
            |k * normalizerLog p q| := abs_sub_le _ (0 : ℝ) _
      _ ≤ (|log2 (poweredNormalizer p k)| + |log2 (poweredNormalizer q k)|) +
            |k * normalizerLog p q| :=
        add_le_add_right (abs_add_le _ _) _
      _ = (|log2 (poweredNormalizer p k)| + |log2 (poweredNormalizer q k)|) +
            k * |normalizerLog p q| := by rw [abs_mul, abs_of_nonneg hk]
      _ ≤ (16 * k + 16 * k) + k * 32 :=
        add_le_add (add_le_add hpk hqk) (mul_le_mul_of_nonneg_left hZ hk)
      _ = 64 * k := by ring

theorem score_bound (p q : ℝ → ℝ) (hp : Continuous p) (hq : Continuous q)
    (hpb : ∀ x, |p x| ≤ 16) (hqb : ∀ x, |q x| ≤ 16)
    (k x : ℝ) (hk1 : 1 ≤ k) (hk2 : k ≤ 2) : |scoreW p q k x| ≤ 256 := by
  obtain ⟨_, hL, hB, hH⟩ := score_component_bounds p q hp hq hpb hqb k x (by linarith)
  exact SubsetSum.coarse_score_bound hk1 hk2 hB hL hH

theorem concrete_score_bound (f : RawFilter) (hf : f ∈ filters) (x : ℝ) :
    |scoreW (r f) (s f) (f.kappa : ℝ) x| ≤ 256 := by
  obtain ⟨hr, hs, hk1, hk2⟩ := concrete_filter_bounds f hf
  exact score_bound (r f) (s f) (continuous_cosineSeries _ _)
    (continuous_cosineSeries _ _) hr hs f.kappa x hk1 hk2

theorem concrete_normalizers_positive (f : RawFilter) (hf : f ∈ filters) (x : ℝ) :
    0 < normalizer (r f) ∧ 0 < normalizer (s f) ∧
    0 < poweredNormalizer (r f) (f.kappa : ℝ) ∧
    0 < poweredNormalizer (s f) (f.kappa : ℝ) ∧
    0 < convolutionMass (r f) (s f) x := by
  obtain ⟨hr, hs, hk1, hk2⟩ := concrete_filter_bounds f hf
  have hrc : Continuous (r f) := continuous_cosineSeries _ _
  have hsc : Continuous (s f) := continuous_cosineSeries _ _
  have hk : (0 : ℝ) ≤ f.kappa := by linarith
  refine ⟨normalizer_pos _ hrc 16 hr, normalizer_pos _ hsc 16 hs, ?_, ?_, ?_⟩
  · apply normalizer_pos (fun y => (f.kappa : ℝ) * r f y) (continuous_const.mul hrc)
      (16 * (f.kappa : ℝ))
    intro y
    rw [abs_mul, abs_of_nonneg hk]
    nlinarith [mul_le_mul_of_nonneg_left (hr y) hk]
  · apply normalizer_pos (fun y => (f.kappa : ℝ) * s f y) (continuous_const.mul hsc)
      (16 * (f.kappa : ℝ))
    intro y
    rw [abs_mul, abs_of_nonneg hk]
    nlinarith [mul_le_mul_of_nonneg_left (hs y) hk]
  · exact normalizer_pos _ (continuous_shifted _ _ hrc hsc x) 32
      (shifted_bound _ _ hr hs x)

end
end SubsetSum.AnalyticFilters
