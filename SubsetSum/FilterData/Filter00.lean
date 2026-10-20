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

def filter_0 : RawFilter := ⟨(102371 / 100000 : ℚ), [(99307 / 100000 : ℚ), (9473 / 20000 : ℚ), (24703 / 100000 : ℚ), (-5391 / 20000 : ℚ), (3971 / 50000 : ℚ), (-237 / 2000 : ℚ), (-587 / 100000 : ℚ), (3003 / 50000 : ℚ)], [(129217 / 100000 : ℚ), (-81333 / 100000 : ℚ), (22177 / 50000 : ℚ), (8221 / 100000 : ℚ), (2511 / 50000 : ℚ), (1391 / 12500 : ℚ), (-2479 / 100000 : ℚ), (-51 / 625 : ℚ)]⟩
theorem filter_0_valid : ValidFilter filter_0 := by
  decide +kernel

def certificate_0_0 : RawCertificate := ⟨0, 0, [9, 13, 17, 19, 22, 26, 33], [(91679 / 10000 : ℚ), (0 / 1 : ℚ), (404 / 625 : ℚ), (9449 / 10000 : ℚ), (48989 / 10000 : ℚ), (37 / 10000 : ℚ), (8141 / 2500 : ℚ), (3857 / 5000 : ℚ), (25871 / 10000 : ℚ)]⟩
theorem certificate_0_0_valid : ValidCertificate certificate_0_0 := by
  decide +kernel
theorem certificate_0_0_cap : FirstCap certificate_0_0 := by
  decide +kernel

def certificate_0_1 : RawCertificate := ⟨0, 1, [9, 13, 14, 22, 24, 27], [(10001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (10117 / 10000 : ℚ), (88167 / 10000 : ℚ), (4239 / 2000 : ℚ), (28307 / 2000 : ℚ), (76113 / 10000 : ℚ), (40057 / 10000 : ℚ)]⟩
theorem certificate_0_1_valid : ValidCertificate certificate_0_1 := by
  decide +kernel
theorem certificate_0_1_cap : FirstCap certificate_0_1 := by
  decide +kernel

def certificate_0_2 : RawCertificate := ⟨0, 2, [9, 13, 14, 22, 24, 27], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (63 / 80 : ℚ), (44481 / 5000 : ℚ), (1161 / 625 : ℚ), (65619 / 5000 : ℚ), (8737 / 1000 : ℚ), (34303 / 10000 : ℚ)]⟩
theorem certificate_0_2_valid : ValidCertificate certificate_0_2 := by
  decide +kernel
theorem certificate_0_2_cap : FirstCap certificate_0_2 := by
  decide +kernel

def certificate_0_3 : RawCertificate := ⟨0, 3, [9, 13, 14, 22, 24, 27], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (731 / 1250 : ℚ), (89607 / 10000 : ℚ), (16289 / 10000 : ℚ), (122357 / 10000 : ℚ), (24269 / 2500 : ℚ), (7357 / 2500 : ℚ)]⟩
theorem certificate_0_3_valid : ValidCertificate certificate_0_3 := by
  decide +kernel
theorem certificate_0_3_cap : FirstCap certificate_0_3 := by
  decide +kernel

def certificate_0_4 : RawCertificate := ⟨0, 4, [9, 13, 14, 22, 24, 27], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (1091 / 2500 : ℚ), (2251 / 250 : ℚ), (7329 / 5000 : ℚ), (116087 / 10000 : ℚ), (103927 / 10000 : ℚ), (13017 / 5000 : ℚ)]⟩
theorem certificate_0_4_valid : ValidCertificate certificate_0_4 := by
  decide +kernel
theorem certificate_0_4_cap : FirstCap certificate_0_4 := by
  decide +kernel

def certificate_0_5 : RawCertificate := ⟨0, 5, [5, 9, 13, 14, 22, 24, 27], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (9 / 1000 : ℚ), (2951 / 10000 : ℚ), (18091 / 2000 : ℚ), (2647 / 2000 : ℚ), (27629 / 2500 : ℚ), (110089 / 10000 : ℚ), (22703 / 10000 : ℚ)]⟩
theorem certificate_0_5_valid : ValidCertificate certificate_0_5 := by
  decide +kernel
theorem certificate_0_5_cap : FirstCap certificate_0_5 := by
  decide +kernel

def certificate_0_6 : RawCertificate := ⟨0, 6, [5, 9, 13, 14, 22, 24, 27], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (559 / 5000 : ℚ), (1531 / 10000 : ℚ), (22793 / 2500 : ℚ), (6431 / 5000 : ℚ), (10753 / 1000 : ℚ), (57117 / 5000 : ℚ), (2141 / 1250 : ℚ)]⟩
theorem certificate_0_6_valid : ValidCertificate certificate_0_6 := by
  decide +kernel
theorem certificate_0_6_cap : FirstCap certificate_0_6 := by
  decide +kernel

def certificate_0_7 : RawCertificate := ⟨0, 7, [5, 9, 13, 14, 22, 24, 27], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (499 / 2500 : ℚ), (29 / 1000 : ℚ), (91779 / 10000 : ℚ), (12529 / 10000 : ℚ), (104943 / 10000 : ℚ), (11781 / 1000 : ℚ), (3093 / 2500 : ℚ)]⟩
theorem certificate_0_7_valid : ValidCertificate certificate_0_7 := by
  decide +kernel
theorem certificate_0_7_cap : FirstCap certificate_0_7 := by
  decide +kernel

def certificate_0_8 : RawCertificate := ⟨0, 8, [5, 13, 14, 22, 24, 27], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (513 / 2000 : ℚ), (11551 / 1250 : ℚ), (2431 / 2000 : ℚ), (102707 / 10000 : ℚ), (120537 / 10000 : ℚ), (809 / 1000 : ℚ)]⟩
theorem certificate_0_8_valid : ValidCertificate certificate_0_8 := by
  decide +kernel
theorem certificate_0_8_cap : FirstCap certificate_0_8 := by
  decide +kernel

def certificate_0_9 : RawCertificate := ⟨0, 9, [5, 13, 14, 22, 24, 27], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (1473 / 5000 : ℚ), (92921 / 10000 : ℚ), (5919 / 5000 : ℚ), (50487 / 5000 : ℚ), (122539 / 10000 : ℚ), (2373 / 5000 : ℚ)]⟩
theorem certificate_0_9_valid : ValidCertificate certificate_0_9 := by
  decide +kernel
theorem certificate_0_9_cap : FirstCap certificate_0_9 := by
  decide +kernel

def filter_0_certificates : List RawCertificate := [certificate_0_0, certificate_0_1, certificate_0_2, certificate_0_3, certificate_0_4, certificate_0_5, certificate_0_6, certificate_0_7, certificate_0_8, certificate_0_9]
theorem filter_0_certificates_count : filter_0_certificates.length = 10 := by rfl
theorem filter_0_certificates_valid : ∀ c ∈ filter_0_certificates, ValidCertificate c := by
  exact all_cons certificate_0_0_valid (all_cons certificate_0_1_valid (all_cons certificate_0_2_valid (all_cons certificate_0_3_valid (all_cons certificate_0_4_valid (all_cons certificate_0_5_valid (all_cons certificate_0_6_valid (all_cons certificate_0_7_valid (all_cons certificate_0_8_valid (all_cons certificate_0_9_valid (all_nil))))))))))
theorem filter_0_certificates_caps : ∀ c ∈ filter_0_certificates, FirstCap c := by
  exact all_cons certificate_0_0_cap (all_cons certificate_0_1_cap (all_cons certificate_0_2_cap (all_cons certificate_0_3_cap (all_cons certificate_0_4_cap (all_cons certificate_0_5_cap (all_cons certificate_0_6_cap (all_cons certificate_0_7_cap (all_cons certificate_0_8_cap (all_cons certificate_0_9_cap (all_nil))))))))))

end SubsetSum.FilterData
