/- 
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Actual trigonometric filters and normalised integrals.
The finite coefficient bounds are imported as proved theorems. Integrability,
positivity, logarithmic envelopes and weighted-average bounds are derived here.
-/
import SubsetSum.FilterData
import SubsetSum.CertificateTransfer

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace SubsetSum.AnalyticFilters
noncomputable section
open MeasureTheory
open FilterData

/-- Coefficients are used in their recorded order, starting at frequency k. -/
def cosineSeries : List ℚ → ℕ → ℝ → ℝ
  | [], _, _ => 0
  | a :: as, k, x => (a : ℝ) * Real.cos ((k : ℝ) * x) + cosineSeries as (k + 1) x

lemma continuous_cosineSeries (as : List ℚ) (k : ℕ) :
    Continuous (cosineSeries as k) := by
  induction as generalizing k with
  | nil => exact continuous_const
  | cons a as ih =>
    change Continuous (fun x : ℝ => (a : ℝ) * Real.cos ((k : ℝ) * x) +
      cosineSeries as (k + 1) x)
    exact (continuous_const.mul
      (Real.continuous_cos.comp (continuous_const.mul continuous_id))).add (ih (k + 1))

lemma cosineSeries_bound (as : List ℚ) :
    (∀ a ∈ as, |a| ≤ 2) → ∀ (k : ℕ) (x : ℝ),
      |cosineSeries as k x| ≤ (as.length : ℝ) * 2 := by
  induction as with
  | nil => intro ha k x; simp [cosineSeries]
  | cons a as ih =>
    intro ha k x
    have ha' : |(a : ℝ)| ≤ 2 := by exact_mod_cast ha a (by simp)
    have ht := ih (fun b hb => ha b (List.mem_cons_of_mem a hb)) (k + 1) x
    calc
      |cosineSeries (a :: as) k x| ≤
          |(a : ℝ) * Real.cos ((k : ℝ) * x)| + |cosineSeries as (k + 1) x| :=
        abs_add_le _ _
      _ ≤ 2 + (as.length : ℝ) * 2 := by
        apply add_le_add _ ht
        rw [abs_mul]
        exact (mul_le_of_le_one_right (abs_nonneg (a : ℝ))
          (Real.abs_cos_le_one _)).trans ha'
      _ = ((a :: as).length : ℝ) * 2 := by simp <;> ring

def r (f : RawFilter) : ℝ → ℝ := cosineSeries f.rCoeffs 1
def s (f : RawFilter) : ℝ → ℝ := cosineSeries f.sCoeffs 1

/-- The actual recorded filter coefficients imply real-axis envelopes. -/
theorem concrete_filter_bounds (f : RawFilter) (hf : f ∈ filters) :
    (∀ x, |r f x| ≤ 16) ∧ (∀ x, |s f x| ≤ 16) ∧
    (1 : ℝ) ≤ f.kappa ∧ (f.kappa : ℝ) ≤ 2 := by
  obtain ⟨hrlen, hslen, hk1, hk2, hr, hs⟩ := all_filters_valid f hf
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro x
    have hb := cosineSeries_bound f.rCoeffs hr 1 x
    norm_num [r, hrlen] at hb ⊢
    exact hb
  · intro x
    have hb := cosineSeries_bound f.sCoeffs hs 1 x
    norm_num [s, hslen] at hb ⊢
    exact hb
  · exact_mod_cast hk1
  · exact_mod_cast hk2

/-- Normalised circle integral, parameterised by one turn t in [0,1]. -/
def circleAverage (g : ℝ → ℝ) : ℝ :=
  ∫ t in Set.Icc (0 : ℝ) 1, g (2 * Real.pi * t)

lemma average_integrable {g : ℝ → ℝ} (hg : Continuous g) :
    Integrable (fun t => g (2 * Real.pi * t))
      (volume.restrict (Set.Icc (0 : ℝ) 1)) :=
  (hg.comp (continuous_const.mul continuous_id)).integrableOn_Icc

lemma average_const (c : ℝ) : circleAverage (fun _ => c) = c := by
  simp [circleAverage]

lemma average_const_mul (c : ℝ) (g : ℝ → ℝ) :
    circleAverage (fun x => c * g x) = c * circleAverage g := by
  simp only [circleAverage, integral_const_mul]

lemma average_mono {g h : ℝ → ℝ} (hg : Continuous g) (hh : Continuous h)
    (hle : ∀ x, g x ≤ h x) : circleAverage g ≤ circleAverage h :=
  integral_mono (average_integrable hg) (average_integrable hh)
    (fun t => hle (2 * Real.pi * t))

lemma le_average {g : ℝ → ℝ} (hg : Continuous g) (c : ℝ)
    (h : ∀ x, c ≤ g x) : c ≤ circleAverage g := by
  calc
    c = circleAverage (fun _ => c) := (average_const c).symm
    _ ≤ circleAverage g := average_mono continuous_const hg h

lemma average_le {g : ℝ → ℝ} (hg : Continuous g) (c : ℝ)
    (h : ∀ x, g x ≤ c) : circleAverage g ≤ c := by
  calc
    circleAverage g ≤ circleAverage (fun _ => c) := average_mono hg continuous_const h
    _ = c := average_const c

lemma continuous_exp2 : Continuous exp2 := by
  unfold exp2
  fun_prop

def log2 (x : ℝ) : ℝ := Real.log x / Real.log 2

lemma log2_exp2 (x : ℝ) : log2 (exp2 x) = x := by
  have h : Real.log 2 ≠ 0 := (Real.log_pos (by norm_num : (1 : ℝ) < 2)).ne'
  unfold log2 exp2
  rw [Real.log_exp]
  field_simp

lemma log2_mono {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) : log2 a ≤ log2 b :=
  div_le_div_of_nonneg_right (Real.log_le_log ha hab) (Real.log_nonneg (by norm_num))

/-- The actual integral of 2^p, rather than a supplied numerical normaliser. -/
def normalizer (p : ℝ → ℝ) : ℝ := circleAverage (fun x => exp2 (p x))

lemma normalizer_bounds (p : ℝ → ℝ) (hp : Continuous p) (C : ℝ)
    (hb : ∀ x, |p x| ≤ C) :
    exp2 (-C) ≤ normalizer p ∧ normalizer p ≤ exp2 C := by
  exact ⟨le_average (continuous_exp2.comp hp) _ 
      (fun x => exp2_mono (abs_le.mp (hb x)).1),
    average_le (continuous_exp2.comp hp) _
      (fun x => exp2_mono (abs_le.mp (hb x)).2)⟩

lemma normalizer_pos (p : ℝ → ℝ) (hp : Continuous p) (C : ℝ)
    (hb : ∀ x, |p x| ≤ C) : 0 < normalizer p :=
  (exp2_pos (-C)).trans_le (normalizer_bounds p hp C hb).1

lemma log_normalizer_bound (p : ℝ → ℝ) (hp : Continuous p) (C : ℝ)
    (hb : ∀ x, |p x| ≤ C) : |log2 (normalizer p)| ≤ C := by
  have h := normalizer_bounds p hp C hb
  have hpz := normalizer_pos p hp C hb
  apply abs_le.mpr
  constructor
  · have hl := log2_mono (exp2_pos (-C)) h.1
    simpa only [log2_exp2] using hl
  · have hu := log2_mono hpz h.2
    simpa only [log2_exp2] using hu

def weightedNumerator (p : ℝ → ℝ) : ℝ :=
  circleAverage (fun x => exp2 (p x) * p x)

/-- A positive integral-weighted average stays inside the pointwise envelope. -/
theorem weighted_average_bound (p : ℝ → ℝ) (hp : Continuous p) (C : ℝ)
    (hb : ∀ x, |p x| ≤ C) :
    |weightedNumerator p / normalizer p| ≤ C := by
  have he : Continuous (fun x => exp2 (p x)) := continuous_exp2.comp hp
  have hz := normalizer_pos p hp C hb
  have hl : -C * normalizer p ≤ weightedNumerator p := by
    calc
      -C * normalizer p = circleAverage (fun x => -C * exp2 (p x)) :=
        (average_const_mul (-C) _).symm
      _ ≤ weightedNumerator p := by
        apply average_mono (continuous_const.mul he) (he.mul hp)
        intro x
        have h := mul_le_mul_of_nonneg_left (abs_le.mp (hb x)).1 (exp2_pos (p x)).le
        nlinarith
  have hu : weightedNumerator p ≤ C * normalizer p := by
    calc
      weightedNumerator p ≤ circleAverage (fun x => C * exp2 (p x)) := by
        apply average_mono (he.mul hp) (continuous_const.mul he)
        intro x
        have h := mul_le_mul_of_nonneg_left (abs_le.mp (hb x)).2 (exp2_pos (p x)).le
        nlinarith
      _ = C * normalizer p := average_const_mul C _
  exact abs_le.mpr ⟨(le_div_iff₀ hz).2 hl, (div_le_iff₀ hz).2 hu⟩

end
end SubsetSum.AnalyticFilters
