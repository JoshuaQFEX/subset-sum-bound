/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Exact constants for the certificate refinement.
-/
import Mathlib

set_option autoImplicit false

namespace SubsetSum
noncomputable section

def tau : ℝ := 0.48767595
def eta : ℝ := 0.51612858
def mask : ℝ := 0.008145205148
def block : ℝ := 0.475442899283
def gamma : ℝ := 0.060035950245
def left : ℝ := 0.483780402235
def right : ℝ := 1 - block - left
def epsilon : ℝ := 0.00000000001
def zeta : ℝ := 0.00000000001
def targetExponent : ℝ := 0.487676
def etaB : ℝ := 0.51613
def deltaB : ℝ := 0.02844
def gammaB : ℝ := 0.45925
def delta : ℝ := eta - tau
def capGamma : ℝ := 2 * tau - eta
def q : ℝ := capGamma / gammaB
def slopeB : ℝ := deltaB / gammaB
def slope : ℝ := delta / capGamma
def transferK : ℝ := delta / q - deltaB
def multiplierBudget : ℝ := 418.36
def finiteMargin : ℝ := 0.000001

theorem budgets : delta = 0.02845263 ∧ capGamma = 0.45922332 := by
  norm_num [delta, capGamma, eta, tau]

theorem transfer_parameters :
    0 < q ∧ q < 1 ∧ 0 < transferK ∧
    slope - slopeB = transferK / gammaB ∧ slope < 1 / 4 := by
  norm_num [q, transferK, slope, slopeB, capGamma, delta, gammaB, deltaB, eta, tau]

def margin0 : ℝ := 0.00025 + (eta - etaB) - 17.211 * transferK
def margin1 : ℝ := 0.00025 + (eta - etaB) - 8.4537 * 1.25 * transferK
def marginMiddle : ℝ := 4 + (eta - etaB) - multiplierBudget * 15 * transferK
def marginTail : ℝ := 17 + (eta - etaB) - multiplierBudget * 256 * (slope - slopeB)

theorem certified_margins :
    finiteMargin < margin0 ∧ finiteMargin < margin1 ∧
    finiteMargin < marginMiddle ∧ finiteMargin < marginTail := by
  norm_num [finiteMargin, margin0, margin1, marginMiddle, marginTail,
    multiplierBudget, transferK, slope, slopeB, q, capGamma, delta,
    gammaB, deltaB, etaB, eta, tau]

theorem multiplier_sum_budget : multiplierBudget * (1 + slope - slopeB) < 419 := by
  norm_num [multiplierBudget, slope, slopeB, delta, capGamma, deltaB, gammaB, eta, tau]

theorem error_exponent :
    finiteMargin - (18 + 6 * 419) * epsilon = 0.00000097468 ∧
    0 < finiteMargin - (18 + 6 * 419) * epsilon := by
  norm_num [finiteMargin, epsilon]

theorem pure_exponent_gap :
    targetExponent - (tau + 20 * epsilon) = 0.0000000498 ∧
    tau + 20 * epsilon < targetExponent := by
  norm_num [targetExponent, tau, epsilon]

theorem guard_margin : zeta + 0.00000000001 < (0.00000001 : ℝ) := by
  norm_num [zeta]

end
end SubsetSum
