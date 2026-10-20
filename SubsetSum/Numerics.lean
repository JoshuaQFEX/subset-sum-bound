/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. All bounds in this file are derived from Real.log.
The rational Taylor inequalities are checked by proof-producing arithmetic.
-/
import SubsetSum.Parameters
import SubsetSum.LogBounds

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace SubsetSum
noncomputable section

/-- Two Taylor bounds give a rapidly converging enclosure after range reduction. -/
lemma log_ratio_interval (n : ℕ) (z lo hi : ℝ) (hz : |z| < 1)
    (hl : lo ≤ realLogTaylor (n + 1) z - realLogTaylor (n + 1) (-z) -
      2 * (|z| ^ (n + 1) * (1 - |z|)⁻¹ / (n + 1)))
    (hu : realLogTaylor (n + 1) z - realLogTaylor (n + 1) (-z) +
      2 * (|z| ^ (n + 1) * (1 - |z|)⁻¹ / (n + 1)) ≤ hi) :
    lo ≤ Real.log ((1 + z) / (1 - z)) ∧
    Real.log ((1 + z) / (1 - z)) ≤ hi := by
  have hp := abs_le.mp (real_log_taylor_bound n hz)
  have hm := abs_le.mp (real_log_taylor_bound n (x := -z) (by simpa using hz))
  simp only [abs_neg, ← sub_eq_add_neg] at hm
  have hzp : 0 < 1 + z := by have := (abs_lt.mp hz).1; linarith
  have hzm : 0 < 1 - z := by have := (abs_lt.mp hz).2; linarith
  rw [Real.log_div hzp.ne' hzm.ne']
  constructor <;> linarith [hp.1, hp.2, hm.1, hm.2]

theorem log_two_bounds :
    (0.6931471805 : ℝ) ≤ Real.log 2 ∧ Real.log 2 ≤ 0.6931471806 := by
  have h := log_ratio_interval 20 (1 / 3) 0.6931471805 0.6931471806
    (by norm_num)
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
  norm_num at h
  exact h

private lemma log_yA :
    (0.0417044136 : ℝ) ≤ Real.log 1.042586258944 ∧
    Real.log 1.042586258944 ≤ 0.0417044137 := by
  have h := log_ratio_interval 20 (83176287 / 3989426287) 0.0417044136 0.0417044137
    (by norm_num)
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
  norm_num at h
  exact h

private lemma log_yB :
    (0.6849686219 : ℝ) ≤ Real.log 1.983709589704 ∧
    Real.log 1.983709589704 ≤ 0.6849686220 := by
  have h := log_ratio_interval 20 (122963698713 / 372963698713) 0.6849686219 0.6849686220
    (by norm_num)
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
  norm_num at h
  exact h

private lemma log_yC :
    (0.6767226226 : ℝ) ≤ Real.log 1.967419179408 ∧
    Real.log 1.967419179408 ≤ 0.6767226227 := by
  have h := log_ratio_interval 20 (60463698713 / 185463698713) 0.6767226226 0.6767226227
    (by norm_num)
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
  norm_num at h
  exact h

private lemma log_yD :
    (0.0161591452 : ℝ) ≤ Real.log 1.016290410296 ∧
    Real.log 1.016290410296 ≤ 0.0161591453 := by
  have h := log_ratio_interval 20 (2036301287 / 252036301287) 0.0161591452 0.0161591453
    (by norm_num)
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
    (by norm_num [realLogTaylor, Finset.sum_range_succ])
  norm_num at h
  exact h

private lemma log_scale (x : ℝ) (m : ℕ) (hx : 0 < x) :
    Real.log (x * (2 : ℝ) ^ m) = Real.log x + m * Real.log 2 := by
  rw [Real.log_mul hx.ne' (by positivity), Real.log_pow]

private lemma log_a_bounds :
    (-4.8103258506 : ℝ) ≤ Real.log 0.008145205148 ∧
    Real.log 0.008145205148 ≤ -4.8103258498 := by
  have h := log_yA
  have h2 := log_two_bounds
  have he := log_scale 0.008145205148 7 (by norm_num)
  norm_num at he
  constructor <;> linarith [h.1, h.2, h2.1, h2.2]

private lemma log_one_sub_a_bounds :
    (-0.0081785587 : ℝ) ≤ Real.log 0.991854794852 ∧
    Real.log 0.991854794852 ≤ -0.0081785585 := by
  have h := log_yB
  have h2 := log_two_bounds
  have he := log_scale 0.991854794852 1 (by norm_num)
  norm_num at he
  constructor <;> linarith [h.1, h.2, h2.1, h2.2]

private lemma log_two_a_bounds :
    (-4.1171786700 : ℝ) ≤ Real.log 0.016290410296 ∧
    Real.log 0.016290410296 ≤ -4.1171786693 := by
  have h := log_yA
  have h2 := log_two_bounds
  have he := log_scale 0.016290410296 6 (by norm_num)
  norm_num at he
  constructor <;> linarith [h.1, h.2, h2.1, h2.2]

private lemma log_one_sub_two_a_bounds :
    (-0.0164245580 : ℝ) ≤ Real.log 0.983709589704 ∧
    Real.log 0.983709589704 ≤ -0.0164245578 := by
  have h := log_yC
  have h2 := log_two_bounds
  have he := log_scale 0.983709589704 1 (by norm_num)
  norm_num at he
  constructor <;> linarith [h.1, h.2, h2.1, h2.2]

private lemma log_half_sub_a_bounds :
    (-0.7095717386 : ℝ) ≤ Real.log 0.491854794852 ∧
    Real.log 0.491854794852 ≤ -0.7095717383 := by
  have h := log_yC
  have h2 := log_two_bounds
  have he := log_scale 0.491854794852 2 (by norm_num)
  norm_num at he
  constructor <;> linarith [h.1, h.2, h2.1, h2.2]

private lemma log_half_add_a_bounds :
    (-0.6769880354 : ℝ) ≤ Real.log 0.508145205148 ∧
    Real.log 0.508145205148 ≤ -0.6769880352 := by
  have h := log_yD
  have h2 := log_two_bounds
  have he := log_scale 0.508145205148 1 (by norm_num)
  norm_num at he
  constructor <;> linarith [h.1, h.2, h2.1, h2.2]

/-- Binary entropy, with actual real logarithms, not a supplied numerical value. -/
def entropy (x : ℝ) : ℝ :=
  (-x * Real.log x - (1 - x) * Real.log (1 - x)) / Real.log 2

theorem entropy_a_bounds :
    (0.0682294245 : ℝ) < entropy mask ∧ entropy mask < 0.0682294251 := by
  have ha := log_a_bounds
  have hb := log_one_sub_a_bounds
  have h2 := log_two_bounds
  have hp : 0 < Real.log 2 := by linarith [h2.1]
  norm_num [entropy, mask]
  constructor
  · apply (lt_div_iff₀ hp).2
    linarith [ha.1, ha.2, hb.1, hb.2, h2.1, h2.2]
  · apply (div_lt_iff₀ hp).2
    linarith [ha.1, ha.2, hb.1, hb.2, h2.1, h2.2]

theorem entropy_two_a_bounds :
    (0.1200719372 : ℝ) < entropy (2 * mask) ∧ entropy (2 * mask) < 0.1200719378 := by
  have ha := log_two_a_bounds
  have hb := log_one_sub_two_a_bounds
  have h2 := log_two_bounds
  have hp : 0 < Real.log 2 := by linarith [h2.1]
  norm_num [entropy, mask]
  constructor
  · apply (lt_div_iff₀ hp).2
    linarith [ha.1, ha.2, hb.1, hb.2, h2.1, h2.2]
  · apply (div_lt_iff₀ hp).2
    linarith [ha.1, ha.2, hb.1, hb.2, h2.1, h2.2]

theorem entropy_half_sub_a_bounds :
    (0.9998085617 : ℝ) < entropy (1 / 2 - mask) ∧
    entropy (1 / 2 - mask) < 0.9998085627 := by
  have ha := log_half_sub_a_bounds
  have hb := log_half_add_a_bounds
  have h2 := log_two_bounds
  have hp : 0 < Real.log 2 := by linarith [h2.1]
  norm_num [entropy, mask]
  constructor
  · apply (lt_div_iff₀ hp).2
    linarith [ha.1, ha.2, hb.1, hb.2, h2.1, h2.2]
  · apply (div_lt_iff₀ hp).2
    linarith [ha.1, ha.2, hb.1, hb.2, h2.1, h2.2]

private theorem log_three_ratio_le_two : Real.log 3 / Real.log 2 ≤ (2 : ℝ) := by
  have hp : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have h := Real.log_le_log (by norm_num : (0 : ℝ) < 3)
    (by norm_num : (3 : ℝ) ≤ 2 ^ 2)
  rw [Real.log_pow] at h
  norm_num at h
  exact (div_le_iff₀ hp).2 h

/-- All alias conditions, with a common strict margin of 10^(-8). -/
theorem alias_constraints :
    gamma + 0.00000001 < entropy (2 * mask) / 2 ∧
    left + (entropy mask - gamma) * block + 0.00000001 < tau ∧
    right + (1 - gamma) * block + 0.00000001 < tau ∧
    1 - block + (entropy mask + entropy (1 / 2 - mask) - gamma) * block - eta +
      0.00000001 < tau ∧
    entropy (1 / 2 - mask) * block + 1 / 2 - tau + 0.00000001 < tau ∧
    0 < right ∧ right < tau ∧ left < tau ∧
    block * (1 - 2 * mask) < left ∧
    block / 2 * (Real.log 3 / Real.log 2) < eta ∧
    block * (1 - 2 * mask) < 1 / 2 ∧
    entropy (2 * mask) / 2 + entropy mask < 1 - 2 * mask ∧
    entropy mask < entropy (1 / 2 - mask) ∧ 0 < mask ∧ mask < 1 / 4 := by
  have ha := entropy_a_bounds
  have hb := entropy_two_a_bounds
  have hc := entropy_half_sub_a_bounds
  have hd := log_three_ratio_le_two
  norm_num [gamma, left, right, block, tau, eta, mask] at *
  repeat' constructor <;> linarith [ha.1, ha.2, hb.1, hb.2, hc.1, hc.2]

end
end SubsetSum
