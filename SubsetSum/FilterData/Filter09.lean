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

def filter_9 : RawFilter := ⟨(103461 / 100000 : ℚ), [(86927 / 100000 : ℚ), (53001 / 100000 : ℚ), (10283 / 25000 : ℚ), (-8931 / 20000 : ℚ), (-2227 / 10000 : ℚ), (16367 / 50000 : ℚ), (-4267 / 100000 : ℚ), (847 / 50000 : ℚ)], [(111897 / 100000 : ℚ), (-71831 / 100000 : ℚ), (24683 / 50000 : ℚ), (25437 / 100000 : ℚ), (-7997 / 50000 : ℚ), (-2237 / 10000 : ℚ), (-1663 / 50000 : ℚ), (-5703 / 100000 : ℚ)]⟩
theorem filter_9_valid : ValidFilter filter_9 := by
  decide +kernel

def certificate_9_0 : RawCertificate := ⟨9, 0, [26, 28, 31, 34, 42], [(85363 / 10000 : ℚ), (0 / 1 : ℚ), (4313 / 10000 : ℚ), (12067 / 2500 : ℚ), (2659 / 2500 : ℚ), (30003 / 10000 : ℚ), (2078 / 125 : ℚ)]⟩
theorem certificate_9_0_valid : ValidCertificate certificate_9_0 := by
  decide +kernel
theorem certificate_9_0_cap : FirstCap certificate_9_0 := by
  decide +kernel

def certificate_9_1 : RawCertificate := ⟨9, 1, [26, 28, 34, 42], [(81097 / 10000 : ℚ), (383 / 500 : ℚ), (0 / 1 : ℚ), (3661 / 5000 : ℚ), (79623 / 10000 : ℚ), (8543 / 5000 : ℚ), (12917 / 625 : ℚ)]⟩
theorem certificate_9_1_valid : ValidCertificate certificate_9_1 := by
  decide +kernel
theorem certificate_9_1_cap : FirstCap certificate_9_1 := by
  decide +kernel

def certificate_9_2 : RawCertificate := ⟨9, 2, [3, 4, 5, 8, 25, 29, 31, 42], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (3251 / 5000 : ℚ), (11869 / 2000 : ℚ), (40 / 1 : ℚ), (112999 / 10000 : ℚ), (69329 / 5000 : ℚ), (173183 / 10000 : ℚ), (232391 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_9_2_valid : ValidCertificate certificate_9_2 := by
  decide +kernel
theorem certificate_9_2_cap : FirstCap certificate_9_2 := by
  decide +kernel

def certificate_9_3 : RawCertificate := ⟨9, 3, [3, 4, 5, 8, 25, 29, 31, 42], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (34 / 125 : ℚ), (15103 / 2500 : ℚ), (40 / 1 : ℚ), (118999 / 10000 : ℚ), (16291 / 1250 : ℚ), (169991 / 10000 : ℚ), (106417 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_9_3_valid : ValidCertificate certificate_9_3 := by
  decide +kernel
theorem certificate_9_3_cap : FirstCap certificate_9_3 := by
  decide +kernel

def certificate_9_4 : RawCertificate := ⟨9, 4, [3, 4, 5, 8, 25, 29, 31, 42], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (59 / 10000 : ℚ), (60947 / 10000 : ℚ), (40 / 1 : ℚ), (123291 / 10000 : ℚ), (15531 / 1250 : ℚ), (83951 / 5000 : ℚ), (201103 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_9_4_valid : ValidCertificate certificate_9_4 := by
  decide +kernel
theorem certificate_9_4_cap : FirstCap certificate_9_4 := by
  decide +kernel

def certificate_9_5 : RawCertificate := ⟨9, 5, [4, 5, 8, 25, 29, 31, 42], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (50047 / 10000 : ℚ), (40 / 1 : ℚ), (128333 / 10000 : ℚ), (11337 / 1000 : ℚ), (85579 / 5000 : ℚ), (302913 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_9_5_valid : ValidCertificate certificate_9_5 := by
  decide +kernel
theorem certificate_9_5_cap : FirstCap certificate_9_5 := by
  decide +kernel

def certificate_9_6 : RawCertificate := ⟨9, 6, [4, 5, 8, 25, 29, 31, 42], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (8093 / 2000 : ℚ), (40 / 1 : ℚ), (132663 / 10000 : ℚ), (51971 / 5000 : ℚ), (87057 / 5000 : ℚ), (392537 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_9_6_valid : ValidCertificate certificate_9_6 := by
  decide +kernel
theorem certificate_9_6_cap : FirstCap certificate_9_6 := by
  decide +kernel

def certificate_9_7 : RawCertificate := ⟨9, 7, [4, 5, 8, 25, 29, 31, 42], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (19211 / 5000 : ℚ), (397563 / 10000 : ℚ), (133779 / 10000 : ℚ), (20121 / 2000 : ℚ), (43863 / 2500 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_9_7_valid : ValidCertificate certificate_9_7 := by
  decide +kernel
theorem certificate_9_7_cap : FirstCap certificate_9_7 := by
  decide +kernel

def certificate_9_8 : RawCertificate := ⟨9, 8, [4, 5, 8, 25, 29, 31, 42], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (36941 / 10000 : ℚ), (49173 / 1250 : ℚ), (134883 / 10000 : ℚ), (48 / 5 : ℚ), (22273 / 1250 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_9_8_valid : ValidCertificate certificate_9_8 := by
  decide +kernel
theorem certificate_9_8_cap : FirstCap certificate_9_8 := by
  decide +kernel

def certificate_9_9 : RawCertificate := ⟨9, 9, [4, 5, 8, 25, 29, 31, 42], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (35789 / 10000 : ℚ), (390141 / 10000 : ℚ), (67867 / 5000 : ℚ), (46213 / 5000 : ℚ), (90159 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_9_9_valid : ValidCertificate certificate_9_9 := by
  decide +kernel
theorem certificate_9_9_cap : FirstCap certificate_9_9 := by
  decide +kernel

def filter_9_certificates : List RawCertificate := [certificate_9_0, certificate_9_1, certificate_9_2, certificate_9_3, certificate_9_4, certificate_9_5, certificate_9_6, certificate_9_7, certificate_9_8, certificate_9_9]
theorem filter_9_certificates_count : filter_9_certificates.length = 10 := by rfl
theorem filter_9_certificates_valid : ∀ c ∈ filter_9_certificates, ValidCertificate c := by
  exact all_cons certificate_9_0_valid (all_cons certificate_9_1_valid (all_cons certificate_9_2_valid (all_cons certificate_9_3_valid (all_cons certificate_9_4_valid (all_cons certificate_9_5_valid (all_cons certificate_9_6_valid (all_cons certificate_9_7_valid (all_cons certificate_9_8_valid (all_cons certificate_9_9_valid (all_nil))))))))))
theorem filter_9_certificates_caps : ∀ c ∈ filter_9_certificates, FirstCap c := by
  exact all_cons certificate_9_0_cap (all_cons certificate_9_1_cap (all_cons certificate_9_2_cap (all_cons certificate_9_3_cap (all_cons certificate_9_4_cap (all_cons certificate_9_5_cap (all_cons certificate_9_6_cap (all_cons certificate_9_7_cap (all_cons certificate_9_8_cap (all_cons certificate_9_9_cap (all_nil))))))))))

end SubsetSum.FilterData
