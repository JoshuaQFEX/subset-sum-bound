/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Algebraic and integral certificate transfer.
Old moment bounds are explicit theorem hypotheses.
-/
import SubsetSum.Parameters

set_option autoImplicit false

namespace SubsetSum
noncomputable section
open MeasureTheory

def samplingFraction (g W : ℝ) : ℝ := if W ≤ g then 1 else g / W

theorem sampling_low_bounds {g gb W : ℝ} (hg : 0 < g)
    (hgb : g ≤ gb) (hW : W ≤ gb) :
    g / gb ≤ samplingFraction g W ∧ samplingFraction g W ≤ 1 := by
  have hgbpos : 0 < gb := lt_of_lt_of_le hg hgb
  unfold samplingFraction
  split_ifs with h
  · exact ⟨(div_le_one hgbpos).2 hgb, le_rfl⟩
  · have hWpos : 0 < W := lt_trans hg (lt_of_not_ge h)
    exact ⟨div_le_div_of_nonneg_left hg.le hWpos hW,
      (div_le_one hWpos).2 (le_of_lt (lt_of_not_ge h))⟩

theorem sampling_band_bounds {g gb W L z : ℝ} (hg : 0 < g)
    (hggb : g ≤ gb) (hL : 1 ≤ L) (hW : gb * L < W)
    (hz : 1 ≤ z * L) :
    samplingFraction g W = g / W ∧ 0 < samplingFraction g W ∧
    samplingFraction g W ≤ z := by
  have hLp : 0 < L := lt_of_lt_of_le (by norm_num) hL
  have hgbp : 0 < gb := lt_of_lt_of_le hg hggb
  have hgbW : gb < W := lt_of_le_of_lt (by nlinarith) hW
  have hgW : g < W := lt_of_le_of_lt hggb hgbW
  have hWp : 0 < W := lt_trans hg hgW
  have hfrac : g / W ≤ 1 / L := by
    apply (div_le_div_iff₀ hWp hLp).2
    nlinarith
  have hzinv : 1 / L ≤ z := (div_le_iff₀ hLp).2 hz
  simp only [samplingFraction, if_neg (not_le.mpr hgW)]
  exact ⟨True.intro, div_pos hg hWp, hfrac.trans hzinv⟩

/-- Includes the thin interval between the new and old low-region boundaries. -/
theorem low_domination {D q0 alpha U z : ℝ}
    (hD : 0 ≤ D) (hq : 0 < q0) (ha : q0 ≤ alpha)
    (ha1 : alpha ≤ 1) (hz : 1 ≤ z) (hs : alpha * U < D) :
    -alpha * U ≤ -D + z * (D / q0 - U) := by
  have hap : 0 < alpha := lt_of_lt_of_le hq ha
  have hDq : 0 ≤ D / q0 := div_nonneg hD hq.le
  have hbudget : D ≤ alpha * (D / q0) := by
    calc D = q0 * (D / q0) := by field_simp
         _ ≤ alpha * (D / q0) := mul_le_mul_of_nonneg_right ha hDq
  have hu : U < D / q0 := (mul_lt_mul_left hap).mp (hs.trans_le hbudget)
  have hprod := mul_nonneg (sub_nonneg.mpr (ha1.trans hz))
    (sub_nonneg.mpr hu.le)
  nlinarith

theorem band_domination {D A W U alpha z : ℝ} (ha : 0 < alpha)
    (haz : alpha ≤ z) (hbudget : alpha * (A * W) = D)
    (hs : alpha * U < D) : -alpha * U ≤ -D + z * (A * W - U) := by
  have hu : U < A * W := (mul_lt_mul_left ha).mp (by rw [hbudget]; exact hs)
  have hp := mul_nonneg (sub_nonneg.mpr haz) (sub_nonneg.mpr hu.le)
  nlinarith [hbudget]

theorem low_shift (D qb db gb u w z0 z1 rest : ℝ) :
    z0 * (D / qb - u) + z1 * (gb - w) + rest =
      (z0 * (db - u) + z1 * (gb - w) + rest) + z0 * (D / qb - db) := by
  ring

theorem band_shift (A Ab gb L H u w z0 z1 z2 rest : ℝ) :
    z0 * (A * w - u) + z1 * (w - gb * L) +
        (z2 + z0 * (A - Ab)) * (gb * H - w) + rest =
      (z0 * (Ab * w - u) + z1 * (w - gb * L) +
        z2 * (gb * H - w) + rest) + z0 * (A - Ab) * gb * H := by
  ring

theorem upper_multiplier_nonnegative {z0 z2 A Ab : ℝ}
    (hz0 : 0 ≤ z0) (hz2 : 0 ≤ z2) (hA : Ab ≤ A) :
    0 ≤ z2 + z0 * (A - Ab) :=
  add_nonneg hz2 (mul_nonneg hz0 (sub_nonneg.mpr hA))

theorem tail_shift_bound {z A Ab w B old : ℝ}
    (hz : 0 ≤ z) (hA : Ab ≤ A) (hw : w ≤ B) :
    old + z * (A - Ab) * w ≤ old + z * (A - Ab) * B := by
  exact add_le_add_left
    (mul_le_mul_of_nonneg_left hw (mul_nonneg hz (sub_nonneg.mpr hA))) old

theorem coarse_score_bound {k B L H : ℝ}
    (hk0 : 1 ≤ k) (hk1 : k ≤ 2)
    (hB : |B| ≤ 64) (hL : |L| ≤ 64) (hH : |H| ≤ 64 * k) :
    |(2 - k) * B - 2 * L + H| ≤ 256 := by
  have hk : 0 ≤ 2 - k := by linarith
  calc
    |(2 - k) * B - 2 * L + H| ≤ |(2 - k) * B - 2 * L| + |H| := abs_add_le _ _
    _ ≤ |(2 - k) * B| + |2 * L| + |H| :=
      add_le_add_right (abs_sub_le ((2 - k) * B) (2 * L)) |H|
    _ = (2 - k) * |B| + 2 * |L| + |H| := by
      rw [abs_mul, abs_mul, abs_of_nonneg hk]
      norm_num
    _ ≤ (2 - k) * 64 + 2 * 64 + 64 * k :=
      add_le_add (add_le_add (mul_le_mul_of_nonneg_left hB hk)
        (mul_le_mul_of_nonneg_left hL (by norm_num))) hH
    _ = 256 := by ring

def exp2 (x : ℝ) : ℝ := Real.exp (Real.log 2 * x)

theorem exp2_pos (x : ℝ) : 0 < exp2 x := Real.exp_pos _

theorem exp2_mono {a b : ℝ} (h : a ≤ b) : exp2 a ≤ exp2 b := by
  apply Real.exp_le_exp.mpr
  exact mul_le_mul_of_nonneg_left h (Real.log_nonneg (by norm_num))

theorem exp2_add (a b : ℝ) : exp2 (a + b) = exp2 a * exp2 b := by
  simp [exp2, mul_add, Real.exp_add]

theorem exp2_eq_rpow (x : ℝ) : exp2 x = (2 : ℝ) ^ x := by
  rw [Real.rpow_def_of_pos (by norm_num)]
  rfl

variable {Ω : Type*} [MeasurableSpace Ω]

def moment (ν : Measure Ω) (M E : Ω → ℝ) : ℝ := ∫ x, M x * exp2 (E x) ∂ν

theorem moment_shift (ν : Measure Ω) (M E : Ω → ℝ) (c : ℝ) :
    moment ν M (fun x => E x + c) = exp2 c * moment ν M E := by
  unfold moment
  have hf : (fun x => M x * exp2 (E x + c)) =
      (fun x => exp2 c * (M x * exp2 (E x))) := by
    funext x
    rw [exp2_add]
    ring
  rw [hf, integral_const_mul]

theorem moment_transfer_bound (ν : Measure Ω) (M Eold Enew : Ω → ℝ) (c : ℝ)
    (hM : ∀ x, 0 ≤ M x) (hE : ∀ x, Enew x ≤ Eold x + c)
    (hold : Integrable (fun x => M x * exp2 (Eold x)) ν)
    (hnew : Integrable (fun x => M x * exp2 (Enew x)) ν) :
    moment ν M Enew ≤ exp2 c * moment ν M Eold := by
  calc
    moment ν M Enew ≤ ∫ x, exp2 c * (M x * exp2 (Eold x)) ∂ν := by
      apply integral_mono hnew (hold.const_mul _)
      intro x
      calc M x * exp2 (Enew x) ≤ M x * exp2 (Eold x + c) :=
             mul_le_mul_of_nonneg_left (exp2_mono (hE x)) (hM x)
           _ = exp2 c * (M x * exp2 (Eold x)) := by rw [exp2_add]; ring
    _ = exp2 c * moment ν M Eold := by rw [integral_const_mul]; rfl

/-- OLD moment bounds are explicit assumptions; the transfer itself is proved. -/
theorem transferred_moment (ν : Measure Ω) (M Eold Enew : Ω → ℝ)
    (oldEta oldMargin newEta newMargin c : ℝ)
    (hM : ∀ x, 0 ≤ M x) (hE : ∀ x, Enew x ≤ Eold x + c)
    (hold : Integrable (fun x => M x * exp2 (Eold x)) ν)
    (hnew : Integrable (fun x => M x * exp2 (Enew x)) ν)
    (hbase : moment ν M Eold ≤ exp2 (oldEta - oldMargin))
    (hmargin : c + (oldEta - oldMargin) ≤ newEta - newMargin) :
    moment ν M Enew ≤ exp2 (newEta - newMargin) := by
  calc
    moment ν M Enew ≤ exp2 c * moment ν M Eold :=
      moment_transfer_bound ν M Eold Enew c hM hE hold hnew
    _ ≤ exp2 c * exp2 (oldEta - oldMargin) :=
      mul_le_mul_of_nonneg_left hbase (exp2_pos c).le
    _ = exp2 (c + (oldEta - oldMargin)) := (exp2_add _ _).symm
    _ ≤ exp2 (newEta - newMargin) := exp2_mono hmargin

end
end SubsetSum
