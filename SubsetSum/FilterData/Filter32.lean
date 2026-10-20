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

def filter_32 : RawFilter := ⟨(103491 / 100000 : ℚ), [(5317 / 6250 : ℚ), (27741 / 50000 : ℚ), (9547 / 25000 : ℚ), (-1251 / 3125 : ℚ), (-1399 / 5000 : ℚ), (7649 / 25000 : ℚ), (-15929 / 100000 : ℚ), (6331 / 100000 : ℚ)], [(13791 / 12500 : ℚ), (-4519 / 6250 : ℚ), (46223 / 100000 : ℚ), (13867 / 50000 : ℚ), (-13379 / 50000 : ℚ), (-3289 / 25000 : ℚ), (-1789 / 10000 : ℚ), (-489 / 12500 : ℚ)]⟩
theorem filter_32_valid : ValidFilter filter_32 := by
  decide +kernel

def certificate_32_0 : RawCertificate := ⟨32, 0, [28, 34, 37, 38, 39], [(423 / 50 : ℚ), (0 / 1 : ℚ), (337 / 200 : ℚ), (173 / 2500 : ℚ), (897 / 2500 : ℚ), (2761 / 2000 : ℚ), (12413 / 10000 : ℚ)]⟩
theorem certificate_32_0_valid : ValidCertificate certificate_32_0 := by
  decide +kernel
theorem certificate_32_0_cap : FirstCap certificate_32_0 := by
  decide +kernel

def certificate_32_1 : RawCertificate := ⟨32, 1, [24, 28, 38], [(77141 / 10000 : ℚ), (2007 / 1250 : ℚ), (0 / 1 : ℚ), (5101 / 2500 : ℚ), (783 / 625 : ℚ), (22207 / 10000 : ℚ)]⟩
theorem certificate_32_1_valid : ValidCertificate certificate_32_1 := by
  decide +kernel
theorem certificate_32_1_cap : FirstCap certificate_32_1 := by
  decide +kernel

def certificate_32_2 : RawCertificate := ⟨32, 2, [3, 4, 5, 20, 22, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (1871 / 200 : ℚ), (33431 / 2000 : ℚ), (12869 / 625 : ℚ), (5737 / 2000 : ℚ), (281601 / 10000 : ℚ), (195483 / 5000 : ℚ)]⟩
theorem certificate_32_2_valid : ValidCertificate certificate_32_2 := by
  decide +kernel
theorem certificate_32_2_cap : FirstCap certificate_32_2 := by
  decide +kernel

def certificate_32_3 : RawCertificate := ⟨32, 3, [3, 4, 5, 20, 22, 24, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (93693 / 10000 : ℚ), (79921 / 5000 : ℚ), (191977 / 10000 : ℚ), (743 / 250 : ℚ), (134561 / 5000 : ℚ), (523 / 1250 : ℚ), (188959 / 5000 : ℚ)]⟩
theorem certificate_32_3_valid : ValidCertificate certificate_32_3 := by
  decide +kernel
theorem certificate_32_3_cap : FirstCap certificate_32_3 := by
  decide +kernel

def certificate_32_4 : RawCertificate := ⟨32, 4, [3, 4, 5, 20, 22, 24, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (23361 / 2500 : ℚ), (155059 / 10000 : ℚ), (91769 / 5000 : ℚ), (14721 / 5000 : ℚ), (260789 / 10000 : ℚ), (10339 / 10000 : ℚ), (184737 / 5000 : ℚ)]⟩
theorem certificate_32_4_valid : ValidCertificate certificate_32_4 := by
  decide +kernel
theorem certificate_32_4_cap : FirstCap certificate_32_4 := by
  decide +kernel

def certificate_32_5 : RawCertificate := ⟨32, 5, [3, 4, 5, 20, 22, 24, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (93209 / 10000 : ℚ), (150671 / 10000 : ℚ), (87899 / 5000 : ℚ), (2919 / 1000 : ℚ), (126587 / 5000 : ℚ), (3193 / 2000 : ℚ), (361709 / 10000 : ℚ)]⟩
theorem certificate_32_5_valid : ValidCertificate certificate_32_5 := by
  decide +kernel
theorem certificate_32_5_cap : FirstCap certificate_32_5 := by
  decide +kernel

def certificate_32_6 : RawCertificate := ⟨32, 6, [3, 4, 5, 20, 22, 24, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (93003 / 10000 : ℚ), (146929 / 10000 : ℚ), (169199 / 10000 : ℚ), (28977 / 10000 : ℚ), (123351 / 5000 : ℚ), (20747 / 10000 : ℚ), (355077 / 10000 : ℚ)]⟩
theorem certificate_32_6_valid : ValidCertificate certificate_32_6 := by
  decide +kernel
theorem certificate_32_6_cap : FirstCap certificate_32_6 := by
  decide +kernel

def certificate_32_7 : RawCertificate := ⟨32, 7, [3, 4, 5, 20, 22, 24, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (4641 / 500 : ℚ), (1437 / 100 : ℚ), (163509 / 10000 : ℚ), (28793 / 10000 : ℚ), (241137 / 10000 : ℚ), (24861 / 10000 : ℚ), (69869 / 2000 : ℚ)]⟩
theorem certificate_32_7_valid : ValidCertificate certificate_32_7 := by
  decide +kernel
theorem certificate_32_7_cap : FirstCap certificate_32_7 := by
  decide +kernel

def certificate_32_8 : RawCertificate := ⟨32, 8, [3, 4, 5, 20, 22, 24, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (92659 / 10000 : ℚ), (70443 / 5000 : ℚ), (39637 / 2500 : ℚ), (28637 / 10000 : ℚ), (29537 / 1250 : ℚ), (7109 / 2500 : ℚ), (344343 / 10000 : ℚ)]⟩
theorem certificate_32_8_valid : ValidCertificate certificate_32_8 := by
  decide +kernel
theorem certificate_32_8_cap : FirstCap certificate_32_8 := by
  decide +kernel

def certificate_32_9 : RawCertificate := ⟨32, 9, [3, 4, 5, 20, 22, 24, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (92533 / 10000 : ℚ), (138703 / 10000 : ℚ), (154701 / 10000 : ℚ), (28517 / 10000 : ℚ), (232551 / 10000 : ℚ), (31203 / 10000 : ℚ), (170231 / 5000 : ℚ)]⟩
theorem certificate_32_9_valid : ValidCertificate certificate_32_9 := by
  decide +kernel
theorem certificate_32_9_cap : FirstCap certificate_32_9 := by
  decide +kernel

def filter_32_certificates : List RawCertificate := [certificate_32_0, certificate_32_1, certificate_32_2, certificate_32_3, certificate_32_4, certificate_32_5, certificate_32_6, certificate_32_7, certificate_32_8, certificate_32_9]
theorem filter_32_certificates_count : filter_32_certificates.length = 10 := by rfl
theorem filter_32_certificates_valid : ∀ c ∈ filter_32_certificates, ValidCertificate c := by
  exact all_cons certificate_32_0_valid (all_cons certificate_32_1_valid (all_cons certificate_32_2_valid (all_cons certificate_32_3_valid (all_cons certificate_32_4_valid (all_cons certificate_32_5_valid (all_cons certificate_32_6_valid (all_cons certificate_32_7_valid (all_cons certificate_32_8_valid (all_cons certificate_32_9_valid (all_nil))))))))))
theorem filter_32_certificates_caps : ∀ c ∈ filter_32_certificates, FirstCap c := by
  exact all_cons certificate_32_0_cap (all_cons certificate_32_1_cap (all_cons certificate_32_2_cap (all_cons certificate_32_3_cap (all_cons certificate_32_4_cap (all_cons certificate_32_5_cap (all_cons certificate_32_6_cap (all_cons certificate_32_7_cap (all_cons certificate_32_8_cap (all_cons certificate_32_9_cap (all_nil))))))))))

end SubsetSum.FilterData
