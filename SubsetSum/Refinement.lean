/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Concrete application of the proved transfer machinery.
The original moment inequalities remain explicit hypotheses.
-/
import SubsetSum.Numerics
import SubsetSum.Asymptotics
import SubsetSum.Decision

set_option autoImplicit false

namespace SubsetSum
noncomputable section
open MeasureTheory

inductive Region where
  | low | first | middle | tail
  deriving DecidableEq, Fintype

def oldMargin : Region → ℝ
  | .low => 0.00025
  | .first => 0.00025
  | .middle => 4
  | .tail => 17

def shiftCap : Region → ℝ
  | .low => 17.211 * transferK
  | .first => 8.4537 * 1.25 * transferK
  | .middle => multiplierBudget * 15 * transferK
  | .tail => multiplierBudget * 256 * (slope - slopeB)

theorem regional_margin (r : Region) :
    shiftCap r + (etaB - oldMargin r) < eta - finiteMargin := by
  cases r <;>
    norm_num [shiftCap, oldMargin, eta, etaB, finiteMargin, transferK,
      q, capGamma, delta, tau, deltaB, gammaB, multiplierBudget, slope, slopeB]

variable {Ω : Type*} [MeasurableSpace Ω]

/-- Each old certificate plus its proved pointwise transfer implies the new moment bound. -/
theorem regional_moment_transfer (r : Region) (ν : Measure Ω) (M Eold Enew : Ω → ℝ)
    (hM : ∀ x, 0 ≤ M x)
    (hshift : ∀ x, Enew x ≤ Eold x + shiftCap r)
    (hold : Integrable (fun x => M x * exp2 (Eold x)) ν)
    (hnew : Integrable (fun x => M x * exp2 (Enew x)) ν)
    (hbase : moment ν M Eold ≤ exp2 (etaB - oldMargin r)) :
    moment ν M Enew ≤ exp2 (eta - finiteMargin) :=
  transferred_moment ν M Eold Enew etaB (oldMargin r) eta finiteMargin (shiftCap r)
    hM hshift hold hnew hbase (regional_margin r).le

/-- Concrete low-region application: the pointwise transfer is proved, not assumed. -/
theorem low_moment_refinement (ν : Measure Ω) (M u w rest : Ω → ℝ) (z0 z1 : ℝ)
    (hz : z0 ≤ 17.211) (hM : ∀ x, 0 ≤ M x)
    (hold : Integrable (fun x => M x * exp2
      (z0 * (deltaB - u x) + z1 * (gammaB - w x) + rest x)) ν)
    (hnew : Integrable (fun x => M x * exp2
      (z0 * (delta / q - u x) + z1 * (gammaB - w x) + rest x)) ν)
    (hbase : moment ν M (fun x => z0 * (deltaB - u x) +
      z1 * (gammaB - w x) + rest x) ≤ exp2 (etaB - 0.00025)) :
    moment ν M (fun x => z0 * (delta / q - u x) +
      z1 * (gammaB - w x) + rest x) ≤ exp2 (eta - finiteMargin) := by
  apply regional_moment_transfer .low ν M _ _ hM _ hold hnew hbase
  intro x
  have hK : 0 ≤ transferK := transfer_parameters.2.2.1.le
  calc
    z0 * (delta / q - u x) + z1 * (gammaB - w x) + rest x =
        (z0 * (deltaB - u x) + z1 * (gammaB - w x) + rest x) +
        z0 * transferK := by unfold transferK; ring
    _ ≤ (z0 * (deltaB - u x) + z1 * (gammaB - w x) + rest x) + shiftCap .low :=
      add_le_add_left (mul_le_mul_of_nonneg_right hz hK) _

/-- Exact integral identity for every bounded band, with the new upper-row multiplier. -/
theorem bounded_moment_identity (ν : Measure Ω) (M u w rest : Ω → ℝ)
    (L H z0 z1 z2 : ℝ) :
    moment ν M (fun x => z0 * (slope * w x - u x) +
      z1 * (w x - gammaB * L) +
      (z2 + z0 * (slope - slopeB)) * (gammaB * H - w x) + rest x) =
    exp2 (z0 * transferK * H) * moment ν M (fun x =>
      z0 * (slopeB * w x - u x) + z1 * (w x - gammaB * L) +
      z2 * (gammaB * H - w x) + rest x) := by
  have hid : (slope - slopeB) * gammaB = transferK := by
    norm_num [slope, slopeB, transferK, delta, capGamma, q, deltaB, gammaB, eta, tau]
  have hf : (fun x => z0 * (slope * w x - u x) + z1 * (w x - gammaB * L) +
      (z2 + z0 * (slope - slopeB)) * (gammaB * H - w x) + rest x) =
      (fun x => (z0 * (slopeB * w x - u x) + z1 * (w x - gammaB * L) +
        z2 * (gammaB * H - w x) + rest x) + z0 * transferK * H) := by
    funext x
    rw [band_shift]
    rw [show z0 * (slope - slopeB) * gammaB * H = z0 * transferK * H by
      rw [mul_assoc z0 (slope - slopeB) gammaB, hid]]
  rw [hf, moment_shift]

/-- Product bounds used for the middle-region certificates. -/
theorem middle_shift_budget {z0 H : ℝ} (hz0 : 0 ≤ z0)
    (hz : z0 ≤ multiplierBudget) (hH0 : 0 ≤ H) (hH : H ≤ 15) :
    z0 * transferK * H ≤ shiftCap .middle := by
  have hK : 0 ≤ transferK := transfer_parameters.2.2.1.le
  have hZ : 0 ≤ multiplierBudget := by norm_num [multiplierBudget]
  calc
    z0 * transferK * H ≤ multiplierBudget * transferK * H :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hz hK) hH0
    _ ≤ multiplierBudget * transferK * 15 :=
      mul_le_mul_of_nonneg_left hH (mul_nonneg hZ hK)
    _ = shiftCap .middle := by simp [shiftCap]; ring

end
end SubsetSum
