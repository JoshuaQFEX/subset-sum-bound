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

def filter_24 : RawFilter := ⟨(103477 / 100000 : ℚ), [(42257 / 50000 : ℚ), (54903 / 100000 : ℚ), (42997 / 100000 : ℚ), (-37293 / 100000 : ℚ), (-30081 / 100000 : ℚ), (13823 / 50000 : ℚ), (-4271 / 50000 : ℚ), (1151 / 50000 : ℚ)], [(11227 / 10000 : ℚ), (-18843 / 25000 : ℚ), (52559 / 100000 : ℚ), (22297 / 100000 : ℚ), (-13177 / 50000 : ℚ), (-5699 / 50000 : ℚ), (-2603 / 20000 : ℚ), (181 / 50000 : ℚ)]⟩
theorem filter_24_valid : ValidFilter filter_24 := by
  decide +kernel

def certificate_24_0 : RawCertificate := ⟨24, 0, [28, 32, 37], [(21117 / 2500 : ℚ), (0 / 1 : ℚ), (28607 / 10000 : ℚ), (23217 / 5000 : ℚ), (27779 / 10000 : ℚ)]⟩
theorem certificate_24_0_valid : ValidCertificate certificate_24_0 := by
  decide +kernel
theorem certificate_24_0_cap : FirstCap certificate_24_0 := by
  decide +kernel

def certificate_24_1 : RawCertificate := ⟨24, 1, [28, 32, 38], [(76081 / 10000 : ℚ), (18327 / 10000 : ℚ), (0 / 1 : ℚ), (16571 / 10000 : ℚ), (16599 / 5000 : ℚ), (2857 / 2000 : ℚ)]⟩
theorem certificate_24_1_valid : ValidCertificate certificate_24_1 := by
  decide +kernel
theorem certificate_24_1_cap : FirstCap certificate_24_1 := by
  decide +kernel

def certificate_24_2 : RawCertificate := ⟨24, 2, [3, 5, 8, 10, 15, 22, 25, 29], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (18803 / 1250 : ℚ), (180017 / 10000 : ℚ), (26321 / 1250 : ℚ), (30963 / 1250 : ℚ), (168773 / 5000 : ℚ), (51153 / 5000 : ℚ), (91279 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_24_2_valid : ValidCertificate certificate_24_2 := by
  decide +kernel
theorem certificate_24_2_cap : FirstCap certificate_24_2 := by
  decide +kernel

def certificate_24_3 : RawCertificate := ⟨24, 3, [3, 5, 8, 10, 15, 22, 25, 29], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (36453 / 2500 : ℚ), (178577 / 10000 : ℚ), (42873 / 2000 : ℚ), (24733 / 1000 : ℚ), (12913 / 400 : ℚ), (92929 / 10000 : ℚ), (42263 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_24_3_valid : ValidCertificate certificate_24_3 := by
  decide +kernel
theorem certificate_24_3_cap : FirstCap certificate_24_3 := by
  decide +kernel

def certificate_24_4 : RawCertificate := ⟨24, 4, [3, 5, 8, 10, 15, 22, 25, 29], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (35637 / 2500 : ℚ), (177469 / 10000 : ℚ), (13562 / 625 : ℚ), (123513 / 5000 : ℚ), (312279 / 10000 : ℚ), (8633 / 1000 : ℚ), (4983 / 625 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_24_4_valid : ValidCertificate certificate_24_4 := by
  decide +kernel
theorem certificate_24_4_cap : FirstCap certificate_24_4 := by
  decide +kernel

def certificate_24_5 : RawCertificate := ⟨24, 5, [3, 5, 8, 10, 15, 22, 25, 29], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (139557 / 10000 : ℚ), (176389 / 10000 : ℚ), (43871 / 2000 : ℚ), (246719 / 10000 : ℚ), (151261 / 5000 : ℚ), (80311 / 10000 : ℚ), (18829 / 2500 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_24_5_valid : ValidCertificate certificate_24_5 := by
  decide +kernel
theorem certificate_24_5_cap : FirstCap certificate_24_5 := by
  decide +kernel

def certificate_24_6 : RawCertificate := ⟨24, 6, [3, 4, 5, 8, 10, 15, 22, 25, 29], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (124219 / 10000 : ℚ), (1027 / 1000 : ℚ), (106433 / 5000 : ℚ), (15691 / 625 : ℚ), (16793 / 625 : ℚ), (275949 / 10000 : ℚ), (66037 / 10000 : ℚ), (33857 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_24_6_valid : ValidCertificate certificate_24_6 := by
  decide +kernel
theorem certificate_24_6_cap : FirstCap certificate_24_6 := by
  decide +kernel

def certificate_24_7 : RawCertificate := ⟨24, 7, [3, 4, 5, 8, 10, 15, 22, 25, 29], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (105081 / 10000 : ℚ), (23871 / 10000 : ℚ), (261589 / 10000 : ℚ), (146051 / 5000 : ℚ), (297897 / 10000 : ℚ), (244573 / 10000 : ℚ), (3094 / 625 : ℚ), (29687 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_24_7_valid : ValidCertificate certificate_24_7 := by
  decide +kernel
theorem certificate_24_7_cap : FirstCap certificate_24_7 := by
  decide +kernel

def certificate_24_8 : RawCertificate := ⟨24, 8, [3, 4, 5, 8, 10, 15, 22, 25, 29], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (88393 / 10000 : ℚ), (8933 / 2500 : ℚ), (152023 / 5000 : ℚ), (327873 / 10000 : ℚ), (40419 / 1250 : ℚ), (217171 / 10000 : ℚ), (35097 / 10000 : ℚ), (26047 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_24_8_valid : ValidCertificate certificate_24_8 := by
  decide +kernel
theorem certificate_24_8_cap : FirstCap certificate_24_8 := by
  decide +kernel

def certificate_24_9 : RawCertificate := ⟨24, 9, [3, 4, 5, 8, 10, 15, 22, 25, 29], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (37733 / 5000 : ℚ), (22459 / 5000 : ℚ), (336913 / 10000 : ℚ), (355569 / 10000 : ℚ), (171529 / 5000 : ℚ), (195923 / 10000 : ℚ), (2993 / 1250 : ℚ), (2903 / 625 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_24_9_valid : ValidCertificate certificate_24_9 := by
  decide +kernel
theorem certificate_24_9_cap : FirstCap certificate_24_9 := by
  decide +kernel

def filter_24_certificates : List RawCertificate := [certificate_24_0, certificate_24_1, certificate_24_2, certificate_24_3, certificate_24_4, certificate_24_5, certificate_24_6, certificate_24_7, certificate_24_8, certificate_24_9]
theorem filter_24_certificates_count : filter_24_certificates.length = 10 := by rfl
theorem filter_24_certificates_valid : ∀ c ∈ filter_24_certificates, ValidCertificate c := by
  exact all_cons certificate_24_0_valid (all_cons certificate_24_1_valid (all_cons certificate_24_2_valid (all_cons certificate_24_3_valid (all_cons certificate_24_4_valid (all_cons certificate_24_5_valid (all_cons certificate_24_6_valid (all_cons certificate_24_7_valid (all_cons certificate_24_8_valid (all_cons certificate_24_9_valid (all_nil))))))))))
theorem filter_24_certificates_caps : ∀ c ∈ filter_24_certificates, FirstCap c := by
  exact all_cons certificate_24_0_cap (all_cons certificate_24_1_cap (all_cons certificate_24_2_cap (all_cons certificate_24_3_cap (all_cons certificate_24_4_cap (all_cons certificate_24_5_cap (all_cons certificate_24_6_cap (all_cons certificate_24_7_cap (all_cons certificate_24_8_cap (all_cons certificate_24_9_cap (all_nil))))))))))

end SubsetSum.FilterData
