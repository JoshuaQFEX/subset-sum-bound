/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Finite data from a-kapila/maths-proofs.
Pinned source commit: 44c34961b56784c220a6e913cc068d57dc37c5a3
Pinned Git blob: 526c2622038a633cbc1bef9ef5e3f4514843cd91
Finite rational statements only; not continuous integral estimates.
-/
import SubsetSum.FilterData.Base

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 100000

namespace SubsetSum.FilterData

def filter_21 : RawFilter := ⟨(20691 / 20000 : ℚ), [(44417 / 50000 : ℚ), (49837 / 100000 : ℚ), (38691 / 100000 : ℚ), (-7789 / 20000 : ℚ), (-28447 / 100000 : ℚ), (12527 / 50000 : ℚ), (31107 / 100000 : ℚ), (-25291 / 100000 : ℚ)], [(11201 / 10000 : ℚ), (-8407 / 12500 : ℚ), (22753 / 50000 : ℚ), (9267 / 50000 : ℚ), (-5529 / 25000 : ℚ), (-17539 / 100000 : ℚ), (20721 / 100000 : ℚ), (6287 / 50000 : ℚ)]⟩
theorem filter_21_valid : ValidFilter filter_21 := by
  decide +kernel

def certificate_21_0 : RawCertificate := ⟨21, 0, [27, 32, 34, 39, 40], [(5317 / 625 : ℚ), (0 / 1 : ℚ), (8849 / 10000 : ℚ), (7229 / 2000 : ℚ), (4717 / 10000 : ℚ), (14547 / 2500 : ℚ), (1611 / 10000 : ℚ)]⟩
theorem certificate_21_0_valid : ValidCertificate certificate_21_0 := by
  decide +kernel
theorem certificate_21_0_cap : FirstCap certificate_21_0 := by
  decide +kernel

def certificate_21_1 : RawCertificate := ⟨21, 1, [23, 27, 32, 39, 40], [(20737 / 2500 : ℚ), (291 / 5000 : ℚ), (0 / 1 : ℚ), (9113 / 10000 : ℚ), (5069 / 2000 : ℚ), (9013 / 2500 : ℚ), (2973 / 625 : ℚ), (1153 / 10000 : ℚ)]⟩
theorem certificate_21_1_valid : ValidCertificate certificate_21_1 := by
  decide +kernel
theorem certificate_21_1_cap : FirstCap certificate_21_1 := by
  decide +kernel

def certificate_21_2 : RawCertificate := ⟨21, 2, [3, 4, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (14687 / 1250 : ℚ), (36971 / 10000 : ℚ), (175473 / 10000 : ℚ)]⟩
theorem certificate_21_2_valid : ValidCertificate certificate_21_2 := by
  decide +kernel
theorem certificate_21_2_cap : FirstCap certificate_21_2 := by
  decide +kernel

def certificate_21_3 : RawCertificate := ⟨21, 3, [3, 4, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (116497 / 10000 : ℚ), (34713 / 10000 : ℚ), (36013 / 2000 : ℚ)]⟩
theorem certificate_21_3_valid : ValidCertificate certificate_21_3 := by
  decide +kernel
theorem certificate_21_3_cap : FirstCap certificate_21_3 := by
  decide +kernel

def certificate_21_4 : RawCertificate := ⟨21, 4, [3, 4, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (115761 / 10000 : ℚ), (33119 / 10000 : ℚ), (22897 / 1250 : ℚ)]⟩
theorem certificate_21_4_valid : ValidCertificate certificate_21_4 := by
  decide +kernel
theorem certificate_21_4_cap : FirstCap certificate_21_4 := by
  decide +kernel

def certificate_21_5 : RawCertificate := ⟨21, 5, [3, 4, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (57533 / 5000 : ℚ), (15831 / 5000 : ℚ), (92963 / 5000 : ℚ)]⟩
theorem certificate_21_5_valid : ValidCertificate certificate_21_5 := by
  decide +kernel
theorem certificate_21_5_cap : FirstCap certificate_21_5 := by
  decide +kernel

def certificate_21_6 : RawCertificate := ⟨21, 6, [3, 4, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (57229 / 5000 : ℚ), (3803 / 1250 : ℚ), (188193 / 10000 : ℚ)]⟩
theorem certificate_21_6_valid : ValidCertificate certificate_21_6 := by
  decide +kernel
theorem certificate_21_6_cap : FirstCap certificate_21_6 := by
  decide +kernel

def certificate_21_7 : RawCertificate := ⟨21, 7, [3, 4, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (28481 / 2500 : ℚ), (367 / 125 : ℚ), (190093 / 10000 : ℚ)]⟩
theorem certificate_21_7_valid : ValidCertificate certificate_21_7 := by
  decide +kernel
theorem certificate_21_7_cap : FirstCap certificate_21_7 := by
  decide +kernel

def certificate_21_8 : RawCertificate := ⟨21, 8, [3, 4, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (2269 / 200 : ℚ), (5687 / 2000 : ℚ), (191707 / 10000 : ℚ)]⟩
theorem certificate_21_8_valid : ValidCertificate certificate_21_8 := by
  decide +kernel
theorem certificate_21_8_cap : FirstCap certificate_21_8 := by
  decide +kernel

def certificate_21_9 : RawCertificate := ⟨21, 9, [3, 4, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (113077 / 10000 : ℚ), (693 / 250 : ℚ), (48233 / 2500 : ℚ)]⟩
theorem certificate_21_9_valid : ValidCertificate certificate_21_9 := by
  decide +kernel
theorem certificate_21_9_cap : FirstCap certificate_21_9 := by
  decide +kernel

def filter_21_certificates : List RawCertificate := [certificate_21_0, certificate_21_1, certificate_21_2, certificate_21_3, certificate_21_4, certificate_21_5, certificate_21_6, certificate_21_7, certificate_21_8, certificate_21_9]
theorem filter_21_certificates_count : filter_21_certificates.length = 10 := by rfl
theorem filter_21_certificates_valid : ∀ c ∈ filter_21_certificates, ValidCertificate c := by
  exact all_cons certificate_21_0_valid (all_cons certificate_21_1_valid (all_cons certificate_21_2_valid (all_cons certificate_21_3_valid (all_cons certificate_21_4_valid (all_cons certificate_21_5_valid (all_cons certificate_21_6_valid (all_cons certificate_21_7_valid (all_cons certificate_21_8_valid (all_cons certificate_21_9_valid (all_nil))))))))))
theorem filter_21_certificates_caps : ∀ c ∈ filter_21_certificates, FirstCap c := by
  exact all_cons certificate_21_0_cap (all_cons certificate_21_1_cap (all_cons certificate_21_2_cap (all_cons certificate_21_3_cap (all_cons certificate_21_4_cap (all_cons certificate_21_5_cap (all_cons certificate_21_6_cap (all_cons certificate_21_7_cap (all_cons certificate_21_8_cap (all_cons certificate_21_9_cap (all_nil))))))))))

end SubsetSum.FilterData
