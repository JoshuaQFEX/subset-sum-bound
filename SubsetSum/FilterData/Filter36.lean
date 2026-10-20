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

def filter_36 : RawFilter := ⟨(103451 / 100000 : ℚ), [(21673 / 25000 : ℚ), (50471 / 100000 : ℚ), (42791 / 100000 : ℚ), (-43793 / 100000 : ℚ), (-13891 / 50000 : ℚ), (25233 / 100000 : ℚ), (2257 / 10000 : ℚ), (-3691 / 20000 : ℚ)], [(56129 / 50000 : ℚ), (-34073 / 50000 : ℚ), (48267 / 100000 : ℚ), (11677 / 50000 : ℚ), (-11431 / 50000 : ℚ), (-1999 / 12500 : ℚ), (551 / 4000 : ℚ), (11201 / 100000 : ℚ)]⟩
theorem filter_36_valid : ValidFilter filter_36 := by
  decide +kernel

def certificate_36_0 : RawCertificate := ⟨36, 0, [28, 32, 38, 39, 41], [(84679 / 10000 : ℚ), (0 / 1 : ℚ), (1186 / 625 : ℚ), (32031 / 10000 : ℚ), (20689 / 10000 : ℚ), (2487 / 625 : ℚ), (73 / 5000 : ℚ)]⟩
theorem certificate_36_0_valid : ValidCertificate certificate_36_0 := by
  decide +kernel
theorem certificate_36_0_cap : FirstCap certificate_36_0 := by
  decide +kernel

def certificate_36_1 : RawCertificate := ⟨36, 1, [28, 32, 38, 39, 41, 42], [(19681 / 2500 : ℚ), (1103 / 1000 : ℚ), (0 / 1 : ℚ), (10529 / 10000 : ℚ), (19473 / 5000 : ℚ), (13251 / 10000 : ℚ), (4119 / 2000 : ℚ), (128877 / 10000 : ℚ), (1827 / 2500 : ℚ)]⟩
theorem certificate_36_1_valid : ValidCertificate certificate_36_1 := by
  decide +kernel
theorem certificate_36_1_cap : FirstCap certificate_36_1 := by
  decide +kernel

def certificate_36_2 : RawCertificate := ⟨36, 2, [3, 4, 5, 21, 22, 23, 25, 27, 33, 39], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (5823 / 1250 : ℚ), (42881 / 2500 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (6869 / 2500 : ℚ), (40 / 1 : ℚ), (6553 / 1000 : ℚ), (135827 / 10000 : ℚ), (62399 / 2000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_36_2_valid : ValidCertificate certificate_36_2 := by
  decide +kernel
theorem certificate_36_2_cap : FirstCap certificate_36_2 := by
  decide +kernel

def certificate_36_3 : RawCertificate := ⟨36, 3, [3, 4, 5, 21, 22, 23, 25, 27, 33, 39], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (44093 / 10000 : ℚ), (80849 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (51801 / 10000 : ℚ), (40 / 1 : ℚ), (3121 / 400 : ℚ), (9517 / 1250 : ℚ), (63739 / 2500 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_36_3_valid : ValidCertificate certificate_36_3 := by
  decide +kernel
theorem certificate_36_3_cap : FirstCap certificate_36_3 := by
  decide +kernel

def certificate_36_4 : RawCertificate := ⟨36, 4, [3, 4, 5, 21, 22, 23, 25, 27, 33, 39], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (21157 / 5000 : ℚ), (154779 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (34497 / 5000 : ℚ), (40 / 1 : ℚ), (86747 / 10000 : ℚ), (34137 / 10000 : ℚ), (42989 / 2000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_36_4_valid : ValidCertificate certificate_36_4 := by
  decide +kernel
theorem certificate_36_4_cap : FirstCap certificate_36_4 := by
  decide +kernel

def certificate_36_5 : RawCertificate := ⟨36, 5, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (4069 / 1000 : ℚ), (148953 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (83079 / 10000 : ℚ), (40 / 1 : ℚ), (46917 / 5000 : ℚ), (180789 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_36_5_valid : ValidCertificate certificate_36_5 := by
  decide +kernel
theorem certificate_36_5_cap : FirstCap certificate_36_5 := by
  decide +kernel

def certificate_36_6 : RawCertificate := ⟨36, 6, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (2464 / 625 : ℚ), (147409 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (41799 / 5000 : ℚ), (40 / 1 : ℚ), (753 / 80 : ℚ), (83783 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_36_6_valid : ValidCertificate certificate_36_6 := by
  decide +kernel
theorem certificate_36_6_cap : FirstCap certificate_36_6 := by
  decide +kernel

def certificate_36_7 : RawCertificate := ⟨36, 7, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (3833 / 1000 : ℚ), (14609 / 1000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (84079 / 10000 : ℚ), (40 / 1 : ℚ), (94341 / 10000 : ℚ), (156363 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_36_7_valid : ValidCertificate certificate_36_7 := by
  decide +kernel
theorem certificate_36_7_cap : FirstCap certificate_36_7 := by
  decide +kernel

def certificate_36_8 : RawCertificate := ⟨36, 8, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (18687 / 5000 : ℚ), (18119 / 1250 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (84523 / 10000 : ℚ), (40 / 1 : ℚ), (47251 / 5000 : ℚ), (73377 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_36_8_valid : ValidCertificate certificate_36_8 := by
  decide +kernel
theorem certificate_36_8_cap : FirstCap certificate_36_8 := by
  decide +kernel

def certificate_36_9 : RawCertificate := ⟨36, 9, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (36633 / 10000 : ℚ), (36019 / 2500 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (84883 / 10000 : ℚ), (40 / 1 : ℚ), (9461 / 1000 : ℚ), (34851 / 2500 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_36_9_valid : ValidCertificate certificate_36_9 := by
  decide +kernel
theorem certificate_36_9_cap : FirstCap certificate_36_9 := by
  decide +kernel

def filter_36_certificates : List RawCertificate := [certificate_36_0, certificate_36_1, certificate_36_2, certificate_36_3, certificate_36_4, certificate_36_5, certificate_36_6, certificate_36_7, certificate_36_8, certificate_36_9]
theorem filter_36_certificates_count : filter_36_certificates.length = 10 := by rfl
theorem filter_36_certificates_valid : ∀ c ∈ filter_36_certificates, ValidCertificate c := by
  exact all_cons certificate_36_0_valid (all_cons certificate_36_1_valid (all_cons certificate_36_2_valid (all_cons certificate_36_3_valid (all_cons certificate_36_4_valid (all_cons certificate_36_5_valid (all_cons certificate_36_6_valid (all_cons certificate_36_7_valid (all_cons certificate_36_8_valid (all_cons certificate_36_9_valid (all_nil))))))))))
theorem filter_36_certificates_caps : ∀ c ∈ filter_36_certificates, FirstCap c := by
  exact all_cons certificate_36_0_cap (all_cons certificate_36_1_cap (all_cons certificate_36_2_cap (all_cons certificate_36_3_cap (all_cons certificate_36_4_cap (all_cons certificate_36_5_cap (all_cons certificate_36_6_cap (all_cons certificate_36_7_cap (all_cons certificate_36_8_cap (all_cons certificate_36_9_cap (all_nil))))))))))

end SubsetSum.FilterData
