/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Finite data from a-kapila/maths-proofs.
Pinned source commit: 44c34961b56784c220a6e913cc068d57dc37c5a3
Pinned Git blob: 526c2622038a633cbc1bef9ef5e3f4514843cd91
Finite rational statements only; not continuous integral estimates.
-/
import SubsetSum.FilterData.Filter00
import SubsetSum.FilterData.Filter01
import SubsetSum.FilterData.Filter02
import SubsetSum.FilterData.Filter03
import SubsetSum.FilterData.Filter04
import SubsetSum.FilterData.Filter05
import SubsetSum.FilterData.Filter06
import SubsetSum.FilterData.Filter07
import SubsetSum.FilterData.Filter08
import SubsetSum.FilterData.Filter09
import SubsetSum.FilterData.Filter10
import SubsetSum.FilterData.Filter11
import SubsetSum.FilterData.Filter12
import SubsetSum.FilterData.Filter13
import SubsetSum.FilterData.Filter14
import SubsetSum.FilterData.Filter15
import SubsetSum.FilterData.Filter16
import SubsetSum.FilterData.Filter17
import SubsetSum.FilterData.Filter18
import SubsetSum.FilterData.Filter19
import SubsetSum.FilterData.Filter20
import SubsetSum.FilterData.Filter21
import SubsetSum.FilterData.Filter22
import SubsetSum.FilterData.Filter23
import SubsetSum.FilterData.Filter24
import SubsetSum.FilterData.Filter25
import SubsetSum.FilterData.Filter26
import SubsetSum.FilterData.Filter27
import SubsetSum.FilterData.Filter28
import SubsetSum.FilterData.Filter29
import SubsetSum.FilterData.Filter30
import SubsetSum.FilterData.Filter31
import SubsetSum.FilterData.Filter32
import SubsetSum.FilterData.Filter33
import SubsetSum.FilterData.Filter34
import SubsetSum.FilterData.Filter35
import SubsetSum.FilterData.Filter36
import SubsetSum.FilterData.Filter37
import SubsetSum.FilterData.Filter38
import SubsetSum.FilterData.Filter39
import SubsetSum.FilterData.Filter40
import SubsetSum.FilterData.Filter41
import SubsetSum.FilterData.Filter42

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 100000

namespace SubsetSum.FilterData

def filters : List RawFilter := [filter_0, filter_1, filter_2, filter_3, filter_4, filter_5, filter_6, filter_7, filter_8, filter_9, filter_10, filter_11, filter_12, filter_13, filter_14, filter_15, filter_16, filter_17, filter_18, filter_19, filter_20, filter_21, filter_22, filter_23, filter_24, filter_25, filter_26, filter_27, filter_28, filter_29, filter_30, filter_31, filter_32, filter_33, filter_34, filter_35, filter_36, filter_37, filter_38, filter_39, filter_40, filter_41, filter_42]
def certificates : List RawCertificate := filter_0_certificates ++ (filter_1_certificates ++ (filter_2_certificates ++ (filter_3_certificates ++ (filter_4_certificates ++ (filter_5_certificates ++ (filter_6_certificates ++ (filter_7_certificates ++ (filter_8_certificates ++ (filter_9_certificates ++ (filter_10_certificates ++ (filter_11_certificates ++ (filter_12_certificates ++ (filter_13_certificates ++ (filter_14_certificates ++ (filter_15_certificates ++ (filter_16_certificates ++ (filter_17_certificates ++ (filter_18_certificates ++ (filter_19_certificates ++ (filter_20_certificates ++ (filter_21_certificates ++ (filter_22_certificates ++ (filter_23_certificates ++ (filter_24_certificates ++ (filter_25_certificates ++ (filter_26_certificates ++ (filter_27_certificates ++ (filter_28_certificates ++ (filter_29_certificates ++ (filter_30_certificates ++ (filter_31_certificates ++ (filter_32_certificates ++ (filter_33_certificates ++ (filter_34_certificates ++ (filter_35_certificates ++ (filter_36_certificates ++ (filter_37_certificates ++ (filter_38_certificates ++ (filter_39_certificates ++ (filter_40_certificates ++ (filter_41_certificates ++ (filter_42_certificates ++ ([])))))))))))))))))))))))))))))))))))))))))))

theorem filters_count : filters.length = 43 := by decide +kernel
theorem certificates_count : certificates.length = 430 := by decide +kernel

theorem all_filters_valid : ∀ f ∈ filters, ValidFilter f := by
  exact all_cons filter_0_valid (all_cons filter_1_valid (all_cons filter_2_valid (all_cons filter_3_valid (all_cons filter_4_valid (all_cons filter_5_valid (all_cons filter_6_valid (all_cons filter_7_valid (all_cons filter_8_valid (all_cons filter_9_valid (all_cons filter_10_valid (all_cons filter_11_valid (all_cons filter_12_valid (all_cons filter_13_valid (all_cons filter_14_valid (all_cons filter_15_valid (all_cons filter_16_valid (all_cons filter_17_valid (all_cons filter_18_valid (all_cons filter_19_valid (all_cons filter_20_valid (all_cons filter_21_valid (all_cons filter_22_valid (all_cons filter_23_valid (all_cons filter_24_valid (all_cons filter_25_valid (all_cons filter_26_valid (all_cons filter_27_valid (all_cons filter_28_valid (all_cons filter_29_valid (all_cons filter_30_valid (all_cons filter_31_valid (all_cons filter_32_valid (all_cons filter_33_valid (all_cons filter_34_valid (all_cons filter_35_valid (all_cons filter_36_valid (all_cons filter_37_valid (all_cons filter_38_valid (all_cons filter_39_valid (all_cons filter_40_valid (all_cons filter_41_valid (all_cons filter_42_valid (all_nil)))))))))))))))))))))))))))))))))))))))))))

theorem all_certificates_valid : ∀ c ∈ certificates, ValidCertificate c := by
  exact all_append filter_0_certificates_valid (all_append filter_1_certificates_valid (all_append filter_2_certificates_valid (all_append filter_3_certificates_valid (all_append filter_4_certificates_valid (all_append filter_5_certificates_valid (all_append filter_6_certificates_valid (all_append filter_7_certificates_valid (all_append filter_8_certificates_valid (all_append filter_9_certificates_valid (all_append filter_10_certificates_valid (all_append filter_11_certificates_valid (all_append filter_12_certificates_valid (all_append filter_13_certificates_valid (all_append filter_14_certificates_valid (all_append filter_15_certificates_valid (all_append filter_16_certificates_valid (all_append filter_17_certificates_valid (all_append filter_18_certificates_valid (all_append filter_19_certificates_valid (all_append filter_20_certificates_valid (all_append filter_21_certificates_valid (all_append filter_22_certificates_valid (all_append filter_23_certificates_valid (all_append filter_24_certificates_valid (all_append filter_25_certificates_valid (all_append filter_26_certificates_valid (all_append filter_27_certificates_valid (all_append filter_28_certificates_valid (all_append filter_29_certificates_valid (all_append filter_30_certificates_valid (all_append filter_31_certificates_valid (all_append filter_32_certificates_valid (all_append filter_33_certificates_valid (all_append filter_34_certificates_valid (all_append filter_35_certificates_valid (all_append filter_36_certificates_valid (all_append filter_37_certificates_valid (all_append filter_38_certificates_valid (all_append filter_39_certificates_valid (all_append filter_40_certificates_valid (all_append filter_41_certificates_valid (all_append filter_42_certificates_valid (all_nil)))))))))))))))))))))))))))))))))))))))))))

theorem first_multiplier_caps : ∀ c ∈ certificates, FirstCap c := by
  exact all_append filter_0_certificates_caps (all_append filter_1_certificates_caps (all_append filter_2_certificates_caps (all_append filter_3_certificates_caps (all_append filter_4_certificates_caps (all_append filter_5_certificates_caps (all_append filter_6_certificates_caps (all_append filter_7_certificates_caps (all_append filter_8_certificates_caps (all_append filter_9_certificates_caps (all_append filter_10_certificates_caps (all_append filter_11_certificates_caps (all_append filter_12_certificates_caps (all_append filter_13_certificates_caps (all_append filter_14_certificates_caps (all_append filter_15_certificates_caps (all_append filter_16_certificates_caps (all_append filter_17_certificates_caps (all_append filter_18_certificates_caps (all_append filter_19_certificates_caps (all_append filter_20_certificates_caps (all_append filter_21_certificates_caps (all_append filter_22_certificates_caps (all_append filter_23_certificates_caps (all_append filter_24_certificates_caps (all_append filter_25_certificates_caps (all_append filter_26_certificates_caps (all_append filter_27_certificates_caps (all_append filter_28_certificates_caps (all_append filter_29_certificates_caps (all_append filter_30_certificates_caps (all_append filter_31_certificates_caps (all_append filter_32_certificates_caps (all_append filter_33_certificates_caps (all_append filter_34_certificates_caps (all_append filter_35_certificates_caps (all_append filter_36_certificates_caps (all_append filter_37_certificates_caps (all_append filter_38_certificates_caps (all_append filter_39_certificates_caps (all_append filter_40_certificates_caps (all_append filter_41_certificates_caps (all_append filter_42_certificates_caps (all_nil)))))))))))))))))))))))))))))))))))))))))))

def expectedIndices : List (ℕ × ℕ) :=
  (List.range 43).flatMap (fun v => (List.range 10).map (fun r => (v, r)))

theorem all_regions_present :
    certificates.map (fun c => (c.filterIndex.val, c.region.val)) = expectedIndices := by
  decide +kernel

/-- All finite side conditions and exact coverage, without numerical hypotheses. -/
theorem complete_finite_certificate_data :
    filters.length = 43 ∧ certificates.length = 430 ∧
    (∀ f ∈ filters, ValidFilter f) ∧
    (∀ c ∈ certificates, ValidCertificate c) ∧
    (∀ c ∈ certificates, FirstCap c) ∧
    certificates.map (fun c => (c.filterIndex.val, c.region.val)) = expectedIndices :=
  ⟨filters_count, certificates_count, all_filters_valid, all_certificates_valid,
    first_multiplier_caps, all_regions_present⟩

end SubsetSum.FilterData
