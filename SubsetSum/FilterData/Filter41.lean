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

def filter_41 : RawFilter := ⟨(25863 / 25000 : ℚ), [(86807 / 100000 : ℚ), (50413 / 100000 : ℚ), (43113 / 100000 : ℚ), (-10673 / 25000 : ℚ), (-13953 / 50000 : ℚ), (24109 / 100000 : ℚ), (10927 / 50000 : ℚ), (-17893 / 100000 : ℚ)], [(111829 / 100000 : ℚ), (-68867 / 100000 : ℚ), (49081 / 100000 : ℚ), (4621 / 20000 : ℚ), (-23279 / 100000 : ℚ), (-1927 / 12500 : ℚ), (417 / 3125 : ℚ), (2137 / 20000 : ℚ)]⟩
theorem filter_41_valid : ValidFilter filter_41 := by
  decide +kernel

def certificate_41_0 : RawCertificate := ⟨41, 0, [28, 32, 37, 38, 39], [(84617 / 10000 : ℚ), (0 / 1 : ℚ), (256 / 125 : ℚ), (34139 / 10000 : ℚ), (7549 / 10000 : ℚ), (1361 / 625 : ℚ), (25777 / 10000 : ℚ)]⟩
theorem certificate_41_0_valid : ValidCertificate certificate_41_0 := by
  decide +kernel
theorem certificate_41_0_cap : FirstCap certificate_41_0 := by
  decide +kernel

def certificate_41_1 : RawCertificate := ⟨41, 1, [28, 32, 37, 38], [(15843 / 2000 : ℚ), (8957 / 10000 : ℚ), (0 / 1 : ℚ), (1637 / 500 : ℚ), (2623 / 625 : ℚ), (21529 / 5000 : ℚ), (24521 / 10000 : ℚ)]⟩
theorem certificate_41_1_valid : ValidCertificate certificate_41_1 := by
  decide +kernel
theorem certificate_41_1_cap : FirstCap certificate_41_1 := by
  decide +kernel

def certificate_41_2 : RawCertificate := ⟨41, 2, [3, 4, 5, 20, 21, 22, 23, 25, 29, 32, 36, 37, 38, 39], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (42353 / 10000 : ℚ), (152321 / 10000 : ℚ), (40 / 1 : ℚ), (163957 / 10000 : ℚ), (40 / 1 : ℚ), (120769 / 5000 : ℚ), (40 / 1 : ℚ), (52109 / 10000 : ℚ), (481 / 2000 : ℚ), (136823 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_41_2_valid : ValidCertificate certificate_41_2 := by
  decide +kernel
theorem certificate_41_2_cap : FirstCap certificate_41_2 := by
  decide +kernel

def certificate_41_3 : RawCertificate := ⟨41, 3, [3, 4, 5, 20, 21, 22, 23, 25, 32, 36, 37, 38, 39], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (4759 / 1250 : ℚ), (18697 / 1250 : ℚ), (40 / 1 : ℚ), (82869 / 5000 : ℚ), (40 / 1 : ℚ), (239801 / 10000 : ℚ), (40 / 1 : ℚ), (33489 / 10000 : ℚ), (32333 / 1000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_41_3_valid : ValidCertificate certificate_41_3 := by
  decide +kernel
theorem certificate_41_3_cap : FirstCap certificate_41_3 := by
  decide +kernel

def certificate_41_4 : RawCertificate := ⟨41, 4, [3, 4, 5, 20, 21, 22, 23, 25, 32, 36, 37, 38, 39], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (35157 / 10000 : ℚ), (147537 / 10000 : ℚ), (40 / 1 : ℚ), (166401 / 10000 : ℚ), (40 / 1 : ℚ), (119367 / 5000 : ℚ), (40 / 1 : ℚ), (799 / 400 : ℚ), (356723 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_41_4_valid : ValidCertificate certificate_41_4 := by
  decide +kernel
theorem certificate_41_4_cap : FirstCap certificate_41_4 := by
  decide +kernel

def certificate_41_5 : RawCertificate := ⟨41, 5, [3, 4, 5, 20, 21, 22, 23, 25, 32, 36, 37, 38, 39], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (16237 / 5000 : ℚ), (29133 / 2000 : ℚ), (40 / 1 : ℚ), (16701 / 1000 : ℚ), (40 / 1 : ℚ), (237793 / 10000 : ℚ), (40 / 1 : ℚ), (1891 / 2500 : ℚ), (387337 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_41_5_valid : ValidCertificate certificate_41_5 := by
  decide +kernel
theorem certificate_41_5_cap : FirstCap certificate_41_5 := by
  decide +kernel

def certificate_41_6 : RawCertificate := ⟨41, 6, [3, 4, 5, 20, 21, 22, 23, 25, 32, 36, 37, 38, 39], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (30923 / 10000 : ℚ), (18053 / 1250 : ℚ), (40 / 1 : ℚ), (10412 / 625 : ℚ), (40 / 1 : ℚ), (14816 / 625 : ℚ), (40 / 1 : ℚ), (337 / 2000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_41_6_valid : ValidCertificate certificate_41_6 := by
  decide +kernel
theorem certificate_41_6_cap : FirstCap certificate_41_6 := by
  decide +kernel

def certificate_41_7 : RawCertificate := ⟨41, 7, [3, 4, 5, 20, 21, 22, 23, 25, 32, 36, 37, 38, 39], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (14559 / 5000 : ℚ), (71849 / 5000 : ℚ), (40 / 1 : ℚ), (83927 / 5000 : ℚ), (97763 / 2500 : ℚ), (2381 / 100 : ℚ), (40 / 1 : ℚ), (1101 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_41_7_valid : ValidCertificate certificate_41_7 := by
  decide +kernel
theorem certificate_41_7_cap : FirstCap certificate_41_7 := by
  decide +kernel

def certificate_41_8 : RawCertificate := ⟨41, 8, [3, 4, 5, 20, 21, 22, 23, 25, 32, 36, 37, 38, 39], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (13609 / 5000 : ℚ), (143081 / 10000 : ℚ), (40 / 1 : ℚ), (84837 / 5000 : ℚ), (47569 / 1250 : ℚ), (59879 / 2500 : ℚ), (40 / 1 : ℚ), (49 / 625 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_41_8_valid : ValidCertificate certificate_41_8 := by
  decide +kernel
theorem certificate_41_8_cap : FirstCap certificate_41_8 := by
  decide +kernel

def certificate_41_9 : RawCertificate := ⟨41, 9, [3, 4, 5, 20, 21, 22, 23, 25, 32, 36, 37, 38, 39], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (12871 / 5000 : ℚ), (142601 / 10000 : ℚ), (40 / 1 : ℚ), (42771 / 2500 : ℚ), (186207 / 5000 : ℚ), (120313 / 5000 : ℚ), (40 / 1 : ℚ), (133 / 2500 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_41_9_valid : ValidCertificate certificate_41_9 := by
  decide +kernel
theorem certificate_41_9_cap : FirstCap certificate_41_9 := by
  decide +kernel

def filter_41_certificates : List RawCertificate := [certificate_41_0, certificate_41_1, certificate_41_2, certificate_41_3, certificate_41_4, certificate_41_5, certificate_41_6, certificate_41_7, certificate_41_8, certificate_41_9]
theorem filter_41_certificates_count : filter_41_certificates.length = 10 := by rfl
theorem filter_41_certificates_valid : ∀ c ∈ filter_41_certificates, ValidCertificate c := by
  exact all_cons certificate_41_0_valid (all_cons certificate_41_1_valid (all_cons certificate_41_2_valid (all_cons certificate_41_3_valid (all_cons certificate_41_4_valid (all_cons certificate_41_5_valid (all_cons certificate_41_6_valid (all_cons certificate_41_7_valid (all_cons certificate_41_8_valid (all_cons certificate_41_9_valid (all_nil))))))))))
theorem filter_41_certificates_caps : ∀ c ∈ filter_41_certificates, FirstCap c := by
  exact all_cons certificate_41_0_cap (all_cons certificate_41_1_cap (all_cons certificate_41_2_cap (all_cons certificate_41_3_cap (all_cons certificate_41_4_cap (all_cons certificate_41_5_cap (all_cons certificate_41_6_cap (all_cons certificate_41_7_cap (all_cons certificate_41_8_cap (all_cons certificate_41_9_cap (all_nil))))))))))

end SubsetSum.FilterData
