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

def filter_40 : RawFilter := ⟨(51713 / 50000 : ℚ), [(43793 / 50000 : ℚ), (50613 / 100000 : ℚ), (1691 / 4000 : ℚ), (-447 / 1000 : ℚ), (-6033 / 25000 : ℚ), (22823 / 100000 : ℚ), (26037 / 100000 : ℚ), (-19339 / 100000 : ℚ)], [(27861 / 25000 : ℚ), (-34363 / 50000 : ℚ), (4671 / 10000 : ℚ), (11841 / 50000 : ℚ), (-3831 / 20000 : ℚ), (-8119 / 50000 : ℚ), (2303 / 12500 : ℚ), (4791 / 50000 : ℚ)]⟩
theorem filter_40_valid : ValidFilter filter_40 := by
  decide +kernel

def certificate_40_0 : RawCertificate := ⟨40, 0, [28, 32, 34, 36, 38], [(84641 / 10000 : ℚ), (0 / 1 : ℚ), (5841 / 5000 : ℚ), (1783 / 400 : ℚ), (22769 / 10000 : ℚ), (19541 / 10000 : ℚ), (8421 / 10000 : ℚ)]⟩
theorem certificate_40_0_valid : ValidCertificate certificate_40_0 := by
  decide +kernel
theorem certificate_40_0_cap : FirstCap certificate_40_0 := by
  decide +kernel

def certificate_40_1 : RawCertificate := ⟨40, 1, [27, 28, 32, 34, 38], [(5036 / 625 : ℚ), (1151 / 2000 : ℚ), (0 / 1 : ℚ), (10797 / 10000 : ℚ), (5139 / 2500 : ℚ), (48491 / 10000 : ℚ), (3223 / 2500 : ℚ), (27233 / 10000 : ℚ)]⟩
theorem certificate_40_1_valid : ValidCertificate certificate_40_1 := by
  decide +kernel
theorem certificate_40_1_cap : FirstCap certificate_40_1 := by
  decide +kernel

def certificate_40_2 : RawCertificate := ⟨40, 2, [3, 5, 6, 21, 22, 23, 25, 33], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (81401 / 5000 : ℚ), (100071 / 10000 : ℚ), (8967 / 10000 : ℚ), (40 / 1 : ℚ), (66199 / 5000 : ℚ), (148129 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_40_2_valid : ValidCertificate certificate_40_2 := by
  decide +kernel
theorem certificate_40_2_cap : FirstCap certificate_40_2 := by
  decide +kernel

def certificate_40_3 : RawCertificate := ⟨40, 3, [3, 5, 6, 21, 22, 23, 25, 33], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (32313 / 2000 : ℚ), (98913 / 10000 : ℚ), (1359 / 2000 : ℚ), (40 / 1 : ℚ), (134879 / 10000 : ℚ), (278043 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_40_3_valid : ValidCertificate certificate_40_3 := by
  decide +kernel
theorem certificate_40_3_cap : FirstCap certificate_40_3 := by
  decide +kernel

def certificate_40_4 : RawCertificate := ⟨40, 4, [3, 5, 6, 21, 22, 23, 25, 33], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (160669 / 10000 : ℚ), (98071 / 10000 : ℚ), (2603 / 5000 : ℚ), (40 / 1 : ℚ), (136789 / 10000 : ℚ), (66281 / 2500 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_40_4_valid : ValidCertificate certificate_40_4 := by
  decide +kernel
theorem certificate_40_4_cap : FirstCap certificate_40_4 := by
  decide +kernel

def certificate_40_5 : RawCertificate := ⟨40, 5, [3, 5, 6, 21, 22, 23, 25, 33], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (159587 / 10000 : ℚ), (12109 / 1250 : ℚ), (3073 / 10000 : ℚ), (40 / 1 : ℚ), (138761 / 10000 : ℚ), (15724 / 625 : ℚ), (40 / 1 : ℚ), (48889 / 1250 : ℚ)]⟩
theorem certificate_40_5_valid : ValidCertificate certificate_40_5 := by
  decide +kernel
theorem certificate_40_5_cap : FirstCap certificate_40_5 := by
  decide +kernel

def certificate_40_6 : RawCertificate := ⟨40, 6, [3, 5, 21, 22, 23, 25, 33], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (157173 / 10000 : ℚ), (47453 / 5000 : ℚ), (40 / 1 : ℚ), (8708 / 625 : ℚ), (236801 / 10000 : ℚ), (99459 / 2500 : ℚ), (169243 / 5000 : ℚ)]⟩
theorem certificate_40_6_valid : ValidCertificate certificate_40_6 := by
  decide +kernel
theorem certificate_40_6_cap : FirstCap certificate_40_6 := by
  decide +kernel

def certificate_40_7 : RawCertificate := ⟨40, 7, [3, 5, 21, 22, 23, 25, 33], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (77437 / 5000 : ℚ), (23627 / 2500 : ℚ), (40 / 1 : ℚ), (137933 / 10000 : ℚ), (230911 / 10000 : ℚ), (24547 / 625 : ℚ), (36937 / 1250 : ℚ)]⟩
theorem certificate_40_7_valid : ValidCertificate certificate_40_7 := by
  decide +kernel
theorem certificate_40_7_cap : FirstCap certificate_40_7 := by
  decide +kernel

def certificate_40_8 : RawCertificate := ⟨40, 8, [3, 5, 21, 22, 23, 25, 33], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (9554 / 625 : ℚ), (47083 / 5000 : ℚ), (40 / 1 : ℚ), (68369 / 5000 : ℚ), (225771 / 10000 : ℚ), (97077 / 2500 : ℚ), (258031 / 10000 : ℚ)]⟩
theorem certificate_40_8_valid : ValidCertificate certificate_40_8 := by
  decide +kernel
theorem certificate_40_8_cap : FirstCap certificate_40_8 := by
  decide +kernel

def certificate_40_9 : RawCertificate := ⟨40, 9, [3, 5, 21, 22, 23, 25, 33], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (151301 / 10000 : ℚ), (93901 / 10000 : ℚ), (40 / 1 : ℚ), (8489 / 625 : ℚ), (27723 / 1250 : ℚ), (192427 / 5000 : ℚ), (9159 / 400 : ℚ)]⟩
theorem certificate_40_9_valid : ValidCertificate certificate_40_9 := by
  decide +kernel
theorem certificate_40_9_cap : FirstCap certificate_40_9 := by
  decide +kernel

def filter_40_certificates : List RawCertificate := [certificate_40_0, certificate_40_1, certificate_40_2, certificate_40_3, certificate_40_4, certificate_40_5, certificate_40_6, certificate_40_7, certificate_40_8, certificate_40_9]
theorem filter_40_certificates_count : filter_40_certificates.length = 10 := by rfl
theorem filter_40_certificates_valid : ∀ c ∈ filter_40_certificates, ValidCertificate c := by
  exact all_cons certificate_40_0_valid (all_cons certificate_40_1_valid (all_cons certificate_40_2_valid (all_cons certificate_40_3_valid (all_cons certificate_40_4_valid (all_cons certificate_40_5_valid (all_cons certificate_40_6_valid (all_cons certificate_40_7_valid (all_cons certificate_40_8_valid (all_cons certificate_40_9_valid (all_nil))))))))))
theorem filter_40_certificates_caps : ∀ c ∈ filter_40_certificates, FirstCap c := by
  exact all_cons certificate_40_0_cap (all_cons certificate_40_1_cap (all_cons certificate_40_2_cap (all_cons certificate_40_3_cap (all_cons certificate_40_4_cap (all_cons certificate_40_5_cap (all_cons certificate_40_6_cap (all_cons certificate_40_7_cap (all_cons certificate_40_8_cap (all_cons certificate_40_9_cap (all_nil))))))))))

end SubsetSum.FilterData
