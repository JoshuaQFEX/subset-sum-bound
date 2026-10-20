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

def filter_14 : RawFilter := ⟨(103247 / 100000 : ℚ), [(88559 / 100000 : ℚ), (53721 / 100000 : ℚ), (30733 / 100000 : ℚ), (-25829 / 100000 : ℚ), (-1282 / 3125 : ℚ), (37263 / 100000 : ℚ), (4931 / 100000 : ℚ), (333 / 20000 : ℚ)], [(114677 / 100000 : ℚ), (-72577 / 100000 : ℚ), (40769 / 100000 : ℚ), (13659 / 100000 : ℚ), (-5971 / 20000 : ℚ), (-24429 / 100000 : ℚ), (6347 / 100000 : ℚ), (-611 / 10000 : ℚ)]⟩
theorem filter_14_valid : ValidFilter filter_14 := by
  decide +kernel

def certificate_14_0 : RawCertificate := ⟨14, 0, [17, 18, 21, 29, 37], [(84737 / 10000 : ℚ), (0 / 1 : ℚ), (1869 / 1250 : ℚ), (46461 / 10000 : ℚ), (1039 / 1000 : ℚ), (66959 / 10000 : ℚ), (163 / 5000 : ℚ)]⟩
theorem certificate_14_0_valid : ValidCertificate certificate_14_0 := by
  decide +kernel
theorem certificate_14_0_cap : FirstCap certificate_14_0 := by
  decide +kernel

def certificate_14_1 : RawCertificate := ⟨14, 1, [18, 21, 29, 39], [(1019 / 125 : ℚ), (61 / 100 : ℚ), (0 / 1 : ℚ), (11627 / 2500 : ℚ), (1111 / 5000 : ℚ), (72421 / 10000 : ℚ), (1107 / 625 : ℚ)]⟩
theorem certificate_14_1_valid : ValidCertificate certificate_14_1 := by
  decide +kernel
theorem certificate_14_1_cap : FirstCap certificate_14_1 := by
  decide +kernel

def certificate_14_2 : RawCertificate := ⟨14, 2, [3, 4, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (98357 / 10000 : ℚ), (43953 / 10000 : ℚ), (115491 / 5000 : ℚ)]⟩
theorem certificate_14_2_valid : ValidCertificate certificate_14_2 := by
  decide +kernel
theorem certificate_14_2_cap : FirstCap certificate_14_2 := by
  decide +kernel

def certificate_14_3 : RawCertificate := ⟨14, 3, [3, 4, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (97559 / 10000 : ℚ), (41763 / 10000 : ℚ), (225913 / 10000 : ℚ)]⟩
theorem certificate_14_3_valid : ValidCertificate certificate_14_3 := by
  decide +kernel
theorem certificate_14_3_cap : FirstCap certificate_14_3 := by
  decide +kernel

def certificate_14_4 : RawCertificate := ⟨14, 4, [3, 4, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (9697 / 1000 : ℚ), (20109 / 5000 : ℚ), (44483 / 2000 : ℚ)]⟩
theorem certificate_14_4_valid : ValidCertificate certificate_14_4 := by
  decide +kernel
theorem certificate_14_4_cap : FirstCap certificate_14_4 := by
  decide +kernel

def certificate_14_5 : RawCertificate := ⟨14, 5, [3, 4, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (48207 / 5000 : ℚ), (38807 / 10000 : ℚ), (109637 / 5000 : ℚ)]⟩
theorem certificate_14_5_valid : ValidCertificate certificate_14_5 := by
  decide +kernel
theorem certificate_14_5_cap : FirstCap certificate_14_5 := by
  decide +kernel

def certificate_14_6 : RawCertificate := ⟨14, 6, [3, 4, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (11991 / 1250 : ℚ), (37607 / 10000 : ℚ), (27081 / 1250 : ℚ)]⟩
theorem certificate_14_6_valid : ValidCertificate certificate_14_6 := by
  decide +kernel
theorem certificate_14_6_cap : FirstCap certificate_14_6 := by
  decide +kernel

def certificate_14_7 : RawCertificate := ⟨14, 7, [3, 4, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (191 / 20 : ℚ), (2286 / 625 : ℚ), (10721 / 500 : ℚ)]⟩
theorem certificate_14_7_valid : ValidCertificate certificate_14_7 := by
  decide +kernel
theorem certificate_14_7_cap : FirstCap certificate_14_7 := by
  decide +kernel

def certificate_14_8 : RawCertificate := ⟨14, 8, [3, 4, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (1189 / 125 : ℚ), (446 / 125 : ℚ), (212507 / 10000 : ℚ)]⟩
theorem certificate_14_8_valid : ValidCertificate certificate_14_8 := by
  decide +kernel
theorem certificate_14_8_cap : FirstCap certificate_14_8 := by
  decide +kernel

def certificate_14_9 : RawCertificate := ⟨14, 9, [3, 4, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (47411 / 5000 : ℚ), (34987 / 10000 : ℚ), (211041 / 10000 : ℚ)]⟩
theorem certificate_14_9_valid : ValidCertificate certificate_14_9 := by
  decide +kernel
theorem certificate_14_9_cap : FirstCap certificate_14_9 := by
  decide +kernel

def filter_14_certificates : List RawCertificate := [certificate_14_0, certificate_14_1, certificate_14_2, certificate_14_3, certificate_14_4, certificate_14_5, certificate_14_6, certificate_14_7, certificate_14_8, certificate_14_9]
theorem filter_14_certificates_count : filter_14_certificates.length = 10 := by rfl
theorem filter_14_certificates_valid : ∀ c ∈ filter_14_certificates, ValidCertificate c := by
  exact all_cons certificate_14_0_valid (all_cons certificate_14_1_valid (all_cons certificate_14_2_valid (all_cons certificate_14_3_valid (all_cons certificate_14_4_valid (all_cons certificate_14_5_valid (all_cons certificate_14_6_valid (all_cons certificate_14_7_valid (all_cons certificate_14_8_valid (all_cons certificate_14_9_valid (all_nil))))))))))
theorem filter_14_certificates_caps : ∀ c ∈ filter_14_certificates, FirstCap c := by
  exact all_cons certificate_14_0_cap (all_cons certificate_14_1_cap (all_cons certificate_14_2_cap (all_cons certificate_14_3_cap (all_cons certificate_14_4_cap (all_cons certificate_14_5_cap (all_cons certificate_14_6_cap (all_cons certificate_14_7_cap (all_cons certificate_14_8_cap (all_cons certificate_14_9_cap (all_nil))))))))))

end SubsetSum.FilterData
