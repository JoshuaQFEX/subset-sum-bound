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

def filter_17 : RawFilter := ⟨(4127 / 4000 : ℚ), [(717 / 800 : ℚ), (10027 / 20000 : ℚ), (18197 / 50000 : ℚ), (-18869 / 50000 : ℚ), (-32793 / 100000 : ℚ), (31977 / 100000 : ℚ), (5621 / 100000 : ℚ), (607 / 25000 : ℚ)], [(57511 / 50000 : ℚ), (-17161 / 25000 : ℚ), (42637 / 100000 : ℚ), (24349 / 100000 : ℚ), (-5391 / 20000 : ℚ), (-19193 / 100000 : ℚ), (156 / 3125 : ℚ), (-6989 / 100000 : ℚ)]⟩
theorem filter_17_valid : ValidFilter filter_17 := by
  decide +kernel

def certificate_17_0 : RawCertificate := ⟨17, 0, [18, 23, 29, 31, 36, 39], [(8623 / 1000 : ℚ), (0 / 1 : ℚ), (14471 / 10000 : ℚ), (11251 / 10000 : ℚ), (3529 / 5000 : ℚ), (20589 / 5000 : ℚ), (1343 / 10000 : ℚ), (12331 / 2500 : ℚ)]⟩
theorem certificate_17_0_valid : ValidCertificate certificate_17_0 := by
  decide +kernel
theorem certificate_17_0_cap : FirstCap certificate_17_0 := by
  decide +kernel

def certificate_17_1 : RawCertificate := ⟨17, 1, [18, 23, 29, 31, 36, 39], [(81251 / 10000 : ℚ), (11251 / 10000 : ℚ), (0 / 1 : ℚ), (8053 / 2500 : ℚ), (2369 / 2500 : ℚ), (4943 / 5000 : ℚ), (2053 / 400 : ℚ), (6111 / 10000 : ℚ), (45907 / 10000 : ℚ)]⟩
theorem certificate_17_1_valid : ValidCertificate certificate_17_1 := by
  decide +kernel
theorem certificate_17_1_cap : FirstCap certificate_17_1 := by
  decide +kernel

def certificate_17_2 : RawCertificate := ⟨17, 2, [4, 5, 14, 21, 36, 42], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (108709 / 10000 : ℚ), (7107 / 500 : ℚ), (302561 / 10000 : ℚ), (15133 / 10000 : ℚ), (40 / 1 : ℚ), (198607 / 10000 : ℚ)]⟩
theorem certificate_17_2_valid : ValidCertificate certificate_17_2 := by
  decide +kernel
theorem certificate_17_2_cap : FirstCap certificate_17_2 := by
  decide +kernel

def certificate_17_3 : RawCertificate := ⟨17, 3, [4, 5, 14, 21, 36, 42], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (52949 / 5000 : ℚ), (138601 / 10000 : ℚ), (300739 / 10000 : ℚ), (3531 / 5000 : ℚ), (40 / 1 : ℚ), (200283 / 10000 : ℚ)]⟩
theorem certificate_17_3_valid : ValidCertificate certificate_17_3 := by
  decide +kernel
theorem certificate_17_3_cap : FirstCap certificate_17_3 := by
  decide +kernel

def certificate_17_4 : RawCertificate := ⟨17, 4, [4, 5, 14, 21, 36, 42], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (20777 / 2000 : ℚ), (68031 / 5000 : ℚ), (149717 / 5000 : ℚ), (1399 / 10000 : ℚ), (40 / 1 : ℚ), (201491 / 10000 : ℚ)]⟩
theorem certificate_17_4_valid : ValidCertificate certificate_17_4 := by
  decide +kernel
theorem certificate_17_4_cap : FirstCap certificate_17_4 := by
  decide +kernel

def certificate_17_5 : RawCertificate := ⟨17, 5, [4, 5, 14, 36, 42], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (102271 / 10000 : ℚ), (8367 / 625 : ℚ), (148489 / 5000 : ℚ), (396571 / 10000 : ℚ), (203131 / 10000 : ℚ)]⟩
theorem certificate_17_5_valid : ValidCertificate certificate_17_5 := by
  decide +kernel
theorem certificate_17_5_cap : FirstCap certificate_17_5 := by
  decide +kernel

def certificate_17_6 : RawCertificate := ⟨17, 6, [4, 5, 14, 36, 42], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (81 / 8 : ℚ), (66467 / 5000 : ℚ), (147101 / 5000 : ℚ), (38897 / 1000 : ℚ), (102501 / 5000 : ℚ)]⟩
theorem certificate_17_6_valid : ValidCertificate certificate_17_6 := by
  decide +kernel
theorem certificate_17_6_cap : FirstCap certificate_17_6 := by
  decide +kernel

def certificate_17_7 : RawCertificate := ⟨17, 7, [4, 5, 14, 36, 42], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (25089 / 2500 : ℚ), (66051 / 5000 : ℚ), (58363 / 2000 : ℚ), (382479 / 10000 : ℚ), (206613 / 10000 : ℚ)]⟩
theorem certificate_17_7_valid : ValidCertificate certificate_17_7 := by
  decide +kernel
theorem certificate_17_7_cap : FirstCap certificate_17_7 := by
  decide +kernel

def certificate_17_8 : RawCertificate := ⟨17, 8, [4, 5, 14, 36, 42], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (6223 / 625 : ℚ), (1642 / 125 : ℚ), (289741 / 10000 : ℚ), (47109 / 1250 : ℚ), (41603 / 2000 : ℚ)]⟩
theorem certificate_17_8_valid : ValidCertificate certificate_17_8 := by
  decide +kernel
theorem certificate_17_8_cap : FirstCap certificate_17_8 := by
  decide +kernel

def certificate_17_9 : RawCertificate := ⟨17, 9, [4, 5, 14, 36, 42], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (98951 / 10000 : ℚ), (65387 / 5000 : ℚ), (36017 / 1250 : ℚ), (372557 / 10000 : ℚ), (209099 / 10000 : ℚ)]⟩
theorem certificate_17_9_valid : ValidCertificate certificate_17_9 := by
  decide +kernel
theorem certificate_17_9_cap : FirstCap certificate_17_9 := by
  decide +kernel

def filter_17_certificates : List RawCertificate := [certificate_17_0, certificate_17_1, certificate_17_2, certificate_17_3, certificate_17_4, certificate_17_5, certificate_17_6, certificate_17_7, certificate_17_8, certificate_17_9]
theorem filter_17_certificates_count : filter_17_certificates.length = 10 := by rfl
theorem filter_17_certificates_valid : ∀ c ∈ filter_17_certificates, ValidCertificate c := by
  exact all_cons certificate_17_0_valid (all_cons certificate_17_1_valid (all_cons certificate_17_2_valid (all_cons certificate_17_3_valid (all_cons certificate_17_4_valid (all_cons certificate_17_5_valid (all_cons certificate_17_6_valid (all_cons certificate_17_7_valid (all_cons certificate_17_8_valid (all_cons certificate_17_9_valid (all_nil))))))))))
theorem filter_17_certificates_caps : ∀ c ∈ filter_17_certificates, FirstCap c := by
  exact all_cons certificate_17_0_cap (all_cons certificate_17_1_cap (all_cons certificate_17_2_cap (all_cons certificate_17_3_cap (all_cons certificate_17_4_cap (all_cons certificate_17_5_cap (all_cons certificate_17_6_cap (all_cons certificate_17_7_cap (all_cons certificate_17_8_cap (all_cons certificate_17_9_cap (all_nil))))))))))

end SubsetSum.FilterData
