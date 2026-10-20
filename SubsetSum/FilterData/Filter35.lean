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

def filter_35 : RawFilter := ⟨(103391 / 100000 : ℚ), [(85057 / 100000 : ℚ), (53343 / 100000 : ℚ), (44509 / 100000 : ℚ), (-5119 / 12500 : ℚ), (-677 / 2000 : ℚ), (793 / 4000 : ℚ), (2501 / 25000 : ℚ), (-423 / 50000 : ℚ)], [(56447 / 50000 : ℚ), (-35417 / 50000 : ℚ), (48297 / 100000 : ℚ), (5339 / 20000 : ℚ), (-30557 / 100000 : ℚ), (-6563 / 100000 : ℚ), (1507 / 100000 : ℚ), (-3 / 800 : ℚ)]⟩
theorem filter_35_valid : ValidFilter filter_35 := by
  decide +kernel

def certificate_35_0 : RawCertificate := ⟨35, 0, [28, 32, 37, 38], [(16957 / 2000 : ℚ), (0 / 1 : ℚ), (1131 / 625 : ℚ), (20417 / 5000 : ℚ), (13459 / 10000 : ℚ), (1409 / 625 : ℚ)]⟩
theorem certificate_35_0_valid : ValidCertificate certificate_35_0 := by
  decide +kernel
theorem certificate_35_0_cap : FirstCap certificate_35_0 := by
  decide +kernel

def certificate_35_1 : RawCertificate := ⟨35, 1, [24, 28, 32, 38], [(7967 / 1000 : ℚ), (4267 / 5000 : ℚ), (0 / 1 : ℚ), (3443 / 2000 : ℚ), (8853 / 5000 : ℚ), (36903 / 10000 : ℚ), (23521 / 10000 : ℚ)]⟩
theorem certificate_35_1_valid : ValidCertificate certificate_35_1 := by
  decide +kernel
theorem certificate_35_1_cap : FirstCap certificate_35_1 := by
  decide +kernel

def certificate_35_2 : RawCertificate := ⟨35, 2, [3, 4, 5, 10, 23, 24], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (41061 / 5000 : ℚ), (160399 / 10000 : ℚ), (6938 / 625 : ℚ), (32521 / 10000 : ℚ), (139167 / 5000 : ℚ), (382439 / 10000 : ℚ)]⟩
theorem certificate_35_2_valid : ValidCertificate certificate_35_2 := by
  decide +kernel
theorem certificate_35_2_cap : FirstCap certificate_35_2 := by
  decide +kernel

def certificate_35_3 : RawCertificate := ⟨35, 3, [3, 4, 5, 10, 23, 24], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40647 / 5000 : ℚ), (78153 / 5000 : ℚ), (106351 / 10000 : ℚ), (7683 / 2500 : ℚ), (132667 / 5000 : ℚ), (191711 / 5000 : ℚ)]⟩
theorem certificate_35_3_valid : ValidCertificate certificate_35_3 := by
  decide +kernel
theorem certificate_35_3_cap : FirstCap certificate_35_3 := by
  decide +kernel

def certificate_35_4 : RawCertificate := ⟨35, 4, [3, 4, 5, 10, 23, 24], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (5044 / 625 : ℚ), (9587 / 625 : ℚ), (51519 / 5000 : ℚ), (7367 / 2500 : ℚ), (128077 / 5000 : ℚ), (384109 / 10000 : ℚ)]⟩
theorem certificate_35_4_valid : ValidCertificate certificate_35_4 := by
  decide +kernel
theorem certificate_35_4_cap : FirstCap certificate_35_4 := by
  decide +kernel

def certificate_35_5 : RawCertificate := ⟨35, 5, [3, 4, 5, 10, 16, 23, 24], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (7997 / 1000 : ℚ), (150939 / 10000 : ℚ), (100609 / 10000 : ℚ), (14201 / 5000 : ℚ), (559 / 5000 : ℚ), (246759 / 10000 : ℚ), (24012 / 625 : ℚ)]⟩
theorem certificate_35_5_valid : ValidCertificate certificate_35_5 := by
  decide +kernel
theorem certificate_35_5_cap : FirstCap certificate_35_5 := by
  decide +kernel

def certificate_35_6 : RawCertificate := ⟨35, 6, [3, 4, 5, 10, 16, 23, 24], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (9861 / 1250 : ℚ), (149387 / 10000 : ℚ), (100017 / 10000 : ℚ), (27713 / 10000 : ℚ), (4747 / 10000 : ℚ), (236377 / 10000 : ℚ), (95741 / 2500 : ℚ)]⟩
theorem certificate_35_6_valid : ValidCertificate certificate_35_6 := by
  decide +kernel
theorem certificate_35_6_cap : FirstCap certificate_35_6 := by
  decide +kernel

def certificate_35_7 : RawCertificate := ⟨35, 7, [3, 4, 5, 10, 16, 23, 24], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (15591 / 2000 : ℚ), (74021 / 5000 : ℚ), (12437 / 1250 : ℚ), (27119 / 10000 : ℚ), (7869 / 10000 : ℚ), (227439 / 10000 : ℚ), (23869 / 625 : ℚ)]⟩
theorem certificate_35_7_valid : ValidCertificate certificate_35_7 := by
  decide +kernel
theorem certificate_35_7_cap : FirstCap certificate_35_7 := by
  decide +kernel

def certificate_35_8 : RawCertificate := ⟨35, 8, [3, 4, 5, 10, 16, 23, 24], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (77141 / 10000 : ℚ), (9179 / 625 : ℚ), (19807 / 2000 : ℚ), (26603 / 10000 : ℚ), (2117 / 2000 : ℚ), (109831 / 5000 : ℚ), (380979 / 10000 : ℚ)]⟩
theorem certificate_35_8_valid : ValidCertificate certificate_35_8 := by
  decide +kernel
theorem certificate_35_8_cap : FirstCap certificate_35_8 := by
  decide +kernel

def certificate_35_9 : RawCertificate := ⟨35, 9, [3, 4, 5, 10, 16, 23, 24], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (7651 / 1000 : ℚ), (36487 / 2500 : ℚ), (6167 / 625 : ℚ), (26203 / 10000 : ℚ), (12687 / 10000 : ℚ), (106821 / 5000 : ℚ), (380261 / 10000 : ℚ)]⟩
theorem certificate_35_9_valid : ValidCertificate certificate_35_9 := by
  decide +kernel
theorem certificate_35_9_cap : FirstCap certificate_35_9 := by
  decide +kernel

def filter_35_certificates : List RawCertificate := [certificate_35_0, certificate_35_1, certificate_35_2, certificate_35_3, certificate_35_4, certificate_35_5, certificate_35_6, certificate_35_7, certificate_35_8, certificate_35_9]
theorem filter_35_certificates_count : filter_35_certificates.length = 10 := by rfl
theorem filter_35_certificates_valid : ∀ c ∈ filter_35_certificates, ValidCertificate c := by
  exact all_cons certificate_35_0_valid (all_cons certificate_35_1_valid (all_cons certificate_35_2_valid (all_cons certificate_35_3_valid (all_cons certificate_35_4_valid (all_cons certificate_35_5_valid (all_cons certificate_35_6_valid (all_cons certificate_35_7_valid (all_cons certificate_35_8_valid (all_cons certificate_35_9_valid (all_nil))))))))))
theorem filter_35_certificates_caps : ∀ c ∈ filter_35_certificates, FirstCap c := by
  exact all_cons certificate_35_0_cap (all_cons certificate_35_1_cap (all_cons certificate_35_2_cap (all_cons certificate_35_3_cap (all_cons certificate_35_4_cap (all_cons certificate_35_5_cap (all_cons certificate_35_6_cap (all_cons certificate_35_7_cap (all_cons certificate_35_8_cap (all_cons certificate_35_9_cap (all_nil))))))))))

end SubsetSum.FilterData
