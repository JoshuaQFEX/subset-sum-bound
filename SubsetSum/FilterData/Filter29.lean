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

def filter_29 : RawFilter := ⟨(3233 / 3125 : ℚ), [(86313 / 100000 : ℚ), (27593 / 50000 : ℚ), (34889 / 100000 : ℚ), (-18319 / 50000 : ℚ), (-38 / 125 : ℚ), (36213 / 100000 : ℚ), (-15893 / 100000 : ℚ), (451 / 12500 : ℚ)], [(11167 / 10000 : ℚ), (-4633 / 6250 : ℚ), (9041 / 20000 : ℚ), (23333 / 100000 : ℚ), (-13439 / 50000 : ℚ), (-534 / 3125 : ℚ), (-17039 / 100000 : ℚ), (-989 / 100000 : ℚ)]⟩
theorem filter_29_valid : ValidFilter filter_29 := by
  decide +kernel

def certificate_29_0 : RawCertificate := ⟨29, 0, [28, 32, 37, 39], [(21209 / 2500 : ℚ), (0 / 1 : ℚ), (1477 / 1250 : ℚ), (57239 / 10000 : ℚ), (329 / 625 : ℚ), (25149 / 10000 : ℚ)]⟩
theorem certificate_29_0_valid : ValidCertificate certificate_29_0 := by
  decide +kernel
theorem certificate_29_0_cap : FirstCap certificate_29_0 := by
  decide +kernel

def certificate_29_1 : RawCertificate := ⟨29, 1, [24, 27, 32, 37, 42], [(75979 / 10000 : ℚ), (20507 / 10000 : ℚ), (0 / 1 : ℚ), (18679 / 10000 : ℚ), (529 / 2500 : ℚ), (92619 / 10000 : ℚ), (13267 / 10000 : ℚ), (703 / 10000 : ℚ)]⟩
theorem certificate_29_1_valid : ValidCertificate certificate_29_1 := by
  decide +kernel
theorem certificate_29_1_cap : FirstCap certificate_29_1 := by
  decide +kernel

def certificate_29_2 : RawCertificate := ⟨29, 2, [3, 4, 14, 21, 22, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (14843 / 1000 : ℚ), (63571 / 10000 : ℚ), (3889 / 250 : ℚ), (6941 / 1250 : ℚ), (7197 / 1250 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_29_2_valid : ValidCertificate certificate_29_2 := by
  decide +kernel
theorem certificate_29_2_cap : FirstCap certificate_29_2 := by
  decide +kernel

def certificate_29_3 : RawCertificate := ⟨29, 3, [3, 4, 14, 21, 22, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (29531 / 2000 : ℚ), (60631 / 10000 : ℚ), (80919 / 5000 : ℚ), (22897 / 5000 : ℚ), (31287 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_29_3_valid : ValidCertificate certificate_29_3 := by
  decide +kernel
theorem certificate_29_3_cap : FirstCap certificate_29_3 := by
  decide +kernel

def certificate_29_4 : RawCertificate := ⟨29, 4, [3, 4, 14, 21, 22, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (147077 / 10000 : ℚ), (14639 / 2500 : ℚ), (166223 / 10000 : ℚ), (19483 / 5000 : ℚ), (66157 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_29_4_valid : ValidCertificate certificate_29_4 := by
  decide +kernel
theorem certificate_29_4_cap : FirstCap certificate_29_4 := by
  decide +kernel

def certificate_29_5 : RawCertificate := ⟨29, 5, [3, 4, 14, 21, 22, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (73263 / 5000 : ℚ), (28329 / 5000 : ℚ), (170199 / 10000 : ℚ), (32757 / 10000 : ℚ), (69473 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_29_5_valid : ValidCertificate certificate_29_5 := by
  decide +kernel
theorem certificate_29_5_cap : FirstCap certificate_29_5 := by
  decide +kernel

def certificate_29_6 : RawCertificate := ⟨29, 6, [3, 4, 14, 21, 22, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (146041 / 10000 : ℚ), (13761 / 2500 : ℚ), (86777 / 5000 : ℚ), (13753 / 5000 : ℚ), (72321 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_29_6_valid : ValidCertificate certificate_29_6 := by
  decide +kernel
theorem certificate_29_6_cap : FirstCap certificate_29_6 := by
  decide +kernel

def certificate_29_7 : RawCertificate := ⟨29, 7, [3, 4, 14, 21, 22, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (145611 / 10000 : ℚ), (6707 / 1250 : ℚ), (176423 / 10000 : ℚ), (23007 / 10000 : ℚ), (74793 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_29_7_valid : ValidCertificate certificate_29_7 := by
  decide +kernel
theorem certificate_29_7_cap : FirstCap certificate_29_7 := by
  decide +kernel

def certificate_29_8 : RawCertificate := ⟨29, 8, [3, 4, 14, 21, 22, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (36307 / 2500 : ℚ), (52449 / 10000 : ℚ), (22363 / 1250 : ℚ), (2389 / 1250 : ℚ), (38479 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_29_8_valid : ValidCertificate certificate_29_8 := by
  decide +kernel
theorem certificate_29_8_cap : FirstCap certificate_29_8 := by
  decide +kernel

def certificate_29_9 : RawCertificate := ⟨29, 9, [3, 4, 14, 21, 22, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (72463 / 5000 : ℚ), (10303 / 2000 : ℚ), (90407 / 5000 : ℚ), (4027 / 2500 : ℚ), (78643 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_29_9_valid : ValidCertificate certificate_29_9 := by
  decide +kernel
theorem certificate_29_9_cap : FirstCap certificate_29_9 := by
  decide +kernel

def filter_29_certificates : List RawCertificate := [certificate_29_0, certificate_29_1, certificate_29_2, certificate_29_3, certificate_29_4, certificate_29_5, certificate_29_6, certificate_29_7, certificate_29_8, certificate_29_9]
theorem filter_29_certificates_count : filter_29_certificates.length = 10 := by rfl
theorem filter_29_certificates_valid : ∀ c ∈ filter_29_certificates, ValidCertificate c := by
  exact all_cons certificate_29_0_valid (all_cons certificate_29_1_valid (all_cons certificate_29_2_valid (all_cons certificate_29_3_valid (all_cons certificate_29_4_valid (all_cons certificate_29_5_valid (all_cons certificate_29_6_valid (all_cons certificate_29_7_valid (all_cons certificate_29_8_valid (all_cons certificate_29_9_valid (all_nil))))))))))
theorem filter_29_certificates_caps : ∀ c ∈ filter_29_certificates, FirstCap c := by
  exact all_cons certificate_29_0_cap (all_cons certificate_29_1_cap (all_cons certificate_29_2_cap (all_cons certificate_29_3_cap (all_cons certificate_29_4_cap (all_cons certificate_29_5_cap (all_cons certificate_29_6_cap (all_cons certificate_29_7_cap (all_cons certificate_29_8_cap (all_cons certificate_29_9_cap (all_nil))))))))))

end SubsetSum.FilterData
