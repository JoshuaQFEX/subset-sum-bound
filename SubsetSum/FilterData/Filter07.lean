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

def filter_7 : RawFilter := ⟨(103283 / 100000 : ℚ), [(11491 / 12500 : ℚ), (22953 / 50000 : ℚ), (37137 / 100000 : ℚ), (-36271 / 100000 : ℚ), (-19817 / 50000 : ℚ), (4889 / 20000 : ℚ), (389 / 5000 : ℚ), (149 / 6250 : ℚ)], [(23263 / 20000 : ℚ), (-2607 / 4000 : ℚ), (1039 / 2500 : ℚ), (24669 / 100000 : ℚ), (-15613 / 50000 : ℚ), (-1391 / 10000 : ℚ), (2747 / 50000 : ℚ), (-2229 / 25000 : ℚ)]⟩
theorem filter_7_valid : ValidFilter filter_7 := by
  decide +kernel

def certificate_7_0 : RawCertificate := ⟨7, 0, [17, 21, 33], [(26013 / 2500 : ℚ), (57867 / 10000 : ℚ), (9909 / 2000 : ℚ), (7827 / 10000 : ℚ), (8719 / 2500 : ℚ)]⟩
theorem certificate_7_0_valid : ValidCertificate certificate_7_0 := by
  decide +kernel
theorem certificate_7_0_cap : FirstCap certificate_7_0 := by
  decide +kernel

def certificate_7_1 : RawCertificate := ⟨7, 1, [12, 17, 19, 23, 36], [(42153 / 5000 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (15189 / 5000 : ℚ), (42803 / 10000 : ℚ), (7351 / 5000 : ℚ), (561 / 100 : ℚ), (263 / 2500 : ℚ)]⟩
theorem certificate_7_1_valid : ValidCertificate certificate_7_1 := by
  decide +kernel
theorem certificate_7_1_cap : FirstCap certificate_7_1 := by
  decide +kernel

def certificate_7_2 : RawCertificate := ⟨7, 2, [4, 5, 20, 21], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (3817 / 200 : ℚ), (47147 / 2500 : ℚ), (8077 / 10000 : ℚ), (67729 / 5000 : ℚ)]⟩
theorem certificate_7_2_valid : ValidCertificate certificate_7_2 := by
  decide +kernel
theorem certificate_7_2_cap : FirstCap certificate_7_2 := by
  decide +kernel

def certificate_7_3 : RawCertificate := ⟨7, 3, [4, 5, 20, 21], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (47081 / 2500 : ℚ), (1487 / 80 : ℚ), (664 / 625 : ℚ), (25693 / 2000 : ℚ)]⟩
theorem certificate_7_3_valid : ValidCertificate certificate_7_3 := by
  decide +kernel
theorem certificate_7_3_cap : FirstCap certificate_7_3 := by
  decide +kernel

def certificate_7_4 : RawCertificate := ⟨7, 4, [4, 5, 20, 21], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (93259 / 5000 : ℚ), (22987 / 1250 : ℚ), (12477 / 10000 : ℚ), (123563 / 10000 : ℚ)]⟩
theorem certificate_7_4_valid : ValidCertificate certificate_7_4 := by
  decide +kernel
theorem certificate_7_4_cap : FirstCap certificate_7_4 := by
  decide +kernel

def certificate_7_5 : RawCertificate := ⟨7, 5, [4, 5, 20, 21, 23], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (183187 / 10000 : ℚ), (90157 / 5000 : ℚ), (13823 / 10000 : ℚ), (56743 / 5000 : ℚ), (5059 / 5000 : ℚ)]⟩
theorem certificate_7_5_valid : ValidCertificate certificate_7_5 := by
  decide +kernel
theorem certificate_7_5_cap : FirstCap certificate_7_5 := by
  decide +kernel

def certificate_7_6 : RawCertificate := ⟨7, 6, [4, 5, 20, 21, 23], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (35857 / 2000 : ℚ), (176139 / 10000 : ℚ), (3687 / 2500 : ℚ), (25339 / 2500 : ℚ), (6289 / 2500 : ℚ)]⟩
theorem certificate_7_6_valid : ValidCertificate certificate_7_6 := by
  decide +kernel
theorem certificate_7_6_cap : FirstCap certificate_7_6 := by
  decide +kernel

def certificate_7_7 : RawCertificate := ⟨7, 7, [4, 5, 20, 21, 23], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (35181 / 2000 : ℚ), (17251 / 1000 : ℚ), (389 / 250 : ℚ), (90877 / 10000 : ℚ), (1909 / 500 : ℚ)]⟩
theorem certificate_7_7_valid : ValidCertificate certificate_7_7 := by
  decide +kernel
theorem certificate_7_7_cap : FirstCap certificate_7_7 := by
  decide +kernel

def certificate_7_8 : RawCertificate := ⟨7, 8, [4, 5, 20, 21, 23], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (43237 / 2500 : ℚ), (169327 / 10000 : ℚ), (16279 / 10000 : ℚ), (16347 / 2000 : ℚ), (3098 / 625 : ℚ)]⟩
theorem certificate_7_8_valid : ValidCertificate certificate_7_8 := by
  decide +kernel
theorem certificate_7_8_cap : FirstCap certificate_7_8 := by
  decide +kernel

def certificate_7_9 : RawCertificate := ⟨7, 9, [4, 5, 20, 21, 23], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (170649 / 10000 : ℚ), (83423 / 5000 : ℚ), (8421 / 5000 : ℚ), (74643 / 10000 : ℚ), (2921 / 500 : ℚ)]⟩
theorem certificate_7_9_valid : ValidCertificate certificate_7_9 := by
  decide +kernel
theorem certificate_7_9_cap : FirstCap certificate_7_9 := by
  decide +kernel

def filter_7_certificates : List RawCertificate := [certificate_7_0, certificate_7_1, certificate_7_2, certificate_7_3, certificate_7_4, certificate_7_5, certificate_7_6, certificate_7_7, certificate_7_8, certificate_7_9]
theorem filter_7_certificates_count : filter_7_certificates.length = 10 := by rfl
theorem filter_7_certificates_valid : ∀ c ∈ filter_7_certificates, ValidCertificate c := by
  exact all_cons certificate_7_0_valid (all_cons certificate_7_1_valid (all_cons certificate_7_2_valid (all_cons certificate_7_3_valid (all_cons certificate_7_4_valid (all_cons certificate_7_5_valid (all_cons certificate_7_6_valid (all_cons certificate_7_7_valid (all_cons certificate_7_8_valid (all_cons certificate_7_9_valid (all_nil))))))))))
theorem filter_7_certificates_caps : ∀ c ∈ filter_7_certificates, FirstCap c := by
  exact all_cons certificate_7_0_cap (all_cons certificate_7_1_cap (all_cons certificate_7_2_cap (all_cons certificate_7_3_cap (all_cons certificate_7_4_cap (all_cons certificate_7_5_cap (all_cons certificate_7_6_cap (all_cons certificate_7_7_cap (all_cons certificate_7_8_cap (all_cons certificate_7_9_cap (all_nil))))))))))

end SubsetSum.FilterData
