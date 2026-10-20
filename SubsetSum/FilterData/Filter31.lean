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

def filter_31 : RawFilter := ⟨(10341 / 10000 : ℚ), [(85707 / 100000 : ℚ), (54367 / 100000 : ℚ), (7483 / 20000 : ℚ), (-1358 / 3125 : ℚ), (-26503 / 100000 : ℚ), (33393 / 100000 : ℚ), (-7451 / 100000 : ℚ), (31 / 50000 : ℚ)], [(28351 / 25000 : ℚ), (-36297 / 50000 : ℚ), (9477 / 20000 : ℚ), (27029 / 100000 : ℚ), (-23227 / 100000 : ℚ), (-8983 / 50000 : ℚ), (-8723 / 100000 : ℚ), (-1861 / 100000 : ℚ)]⟩
theorem filter_31_valid : ValidFilter filter_31 := by
  decide +kernel

def certificate_31_0 : RawCertificate := ⟨31, 0, [28, 32, 38, 39], [(84669 / 10000 : ℚ), (0 / 1 : ℚ), (4011 / 2000 : ℚ), (41501 / 10000 : ℚ), (1807 / 2000 : ℚ), (21279 / 10000 : ℚ)]⟩
theorem certificate_31_0_valid : ValidCertificate certificate_31_0 := by
  decide +kernel
theorem certificate_31_0_cap : FirstCap certificate_31_0 := by
  decide +kernel

def certificate_31_1 : RawCertificate := ⟨31, 1, [23, 28, 32, 37, 38], [(77427 / 10000 : ℚ), (15111 / 10000 : ℚ), (0 / 1 : ℚ), (503 / 2500 : ℚ), (43219 / 10000 : ℚ), (13767 / 2000 : ℚ), (1089 / 10000 : ℚ), (8989 / 10000 : ℚ)]⟩
theorem certificate_31_1_valid : ValidCertificate certificate_31_1 := by
  decide +kernel
theorem certificate_31_1_cap : FirstCap certificate_31_1 := by
  decide +kernel

def certificate_31_2 : RawCertificate := ⟨31, 2, [4, 5, 8, 22, 25, 42], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (218583 / 10000 : ℚ), (386821 / 10000 : ℚ), (21467 / 5000 : ℚ), (43617 / 10000 : ℚ), (131427 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_31_2_valid : ValidCertificate certificate_31_2 := by
  decide +kernel
theorem certificate_31_2_cap : FirstCap certificate_31_2 := by
  decide +kernel

def certificate_31_3 : RawCertificate := ⟨31, 3, [4, 5, 8, 22, 25, 42], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (213883 / 10000 : ℚ), (75599 / 2000 : ℚ), (11661 / 2500 : ℚ), (8229 / 2000 : ℚ), (254473 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_31_3_valid : ValidCertificate certificate_31_3 := by
  decide +kernel
theorem certificate_31_3_cap : FirstCap certificate_31_3 := by
  decide +kernel

def certificate_31_4 : RawCertificate := ⟨31, 4, [4, 5, 8, 22, 25, 42], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (10527 / 500 : ℚ), (23232 / 625 : ℚ), (1231 / 250 : ℚ), (39471 / 10000 : ℚ), (124251 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_31_4_valid : ValidCertificate certificate_31_4 := by
  decide +kernel
theorem certificate_31_4_cap : FirstCap certificate_31_4 := by
  decide +kernel

def certificate_31_5 : RawCertificate := ⟨31, 5, [4, 5, 8, 22, 25, 42], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (103733 / 5000 : ℚ), (365927 / 10000 : ℚ), (51597 / 10000 : ℚ), (37993 / 10000 : ℚ), (121501 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_31_5_valid : ValidCertificate certificate_31_5 := by
  decide +kernel
theorem certificate_31_5_cap : FirstCap certificate_31_5 := by
  decide +kernel

def certificate_31_6 : RawCertificate := ⟨31, 6, [4, 5, 8, 22, 25, 42], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (204839 / 10000 : ℚ), (360981 / 10000 : ℚ), (53587 / 10000 : ℚ), (1471 / 400 : ℚ), (238297 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_31_6_valid : ValidCertificate certificate_31_6 := by
  decide +kernel
theorem certificate_31_6_cap : FirstCap certificate_31_6 := by
  decide +kernel

def certificate_31_7 : RawCertificate := ⟨31, 7, [4, 5, 8, 22, 25, 42], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (25321 / 1250 : ℚ), (356703 / 10000 : ℚ), (5529 / 1000 : ℚ), (8939 / 2500 : ℚ), (234227 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_31_7_valid : ValidCertificate certificate_31_7 := by
  decide +kernel
theorem certificate_31_7_cap : FirstCap certificate_31_7 := by
  decide +kernel

def certificate_31_8 : RawCertificate := ⟨31, 8, [4, 5, 8, 22, 25, 42], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (100293 / 5000 : ℚ), (176483 / 5000 : ℚ), (56763 / 10000 : ℚ), (34893 / 10000 : ℚ), (14417 / 625 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_31_8_valid : ValidCertificate certificate_31_8 := by
  decide +kernel
theorem certificate_31_8_cap : FirstCap certificate_31_8 := by
  decide +kernel

def certificate_31_9 : RawCertificate := ⟨31, 9, [4, 5, 8, 22, 25, 42], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (199047 / 10000 : ℚ), (21879 / 625 : ℚ), (28949 / 5000 : ℚ), (34239 / 10000 : ℚ), (22791 / 1000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_31_9_valid : ValidCertificate certificate_31_9 := by
  decide +kernel
theorem certificate_31_9_cap : FirstCap certificate_31_9 := by
  decide +kernel

def filter_31_certificates : List RawCertificate := [certificate_31_0, certificate_31_1, certificate_31_2, certificate_31_3, certificate_31_4, certificate_31_5, certificate_31_6, certificate_31_7, certificate_31_8, certificate_31_9]
theorem filter_31_certificates_count : filter_31_certificates.length = 10 := by rfl
theorem filter_31_certificates_valid : ∀ c ∈ filter_31_certificates, ValidCertificate c := by
  exact all_cons certificate_31_0_valid (all_cons certificate_31_1_valid (all_cons certificate_31_2_valid (all_cons certificate_31_3_valid (all_cons certificate_31_4_valid (all_cons certificate_31_5_valid (all_cons certificate_31_6_valid (all_cons certificate_31_7_valid (all_cons certificate_31_8_valid (all_cons certificate_31_9_valid (all_nil))))))))))
theorem filter_31_certificates_caps : ∀ c ∈ filter_31_certificates, FirstCap c := by
  exact all_cons certificate_31_0_cap (all_cons certificate_31_1_cap (all_cons certificate_31_2_cap (all_cons certificate_31_3_cap (all_cons certificate_31_4_cap (all_cons certificate_31_5_cap (all_cons certificate_31_6_cap (all_cons certificate_31_7_cap (all_cons certificate_31_8_cap (all_cons certificate_31_9_cap (all_nil))))))))))

end SubsetSum.FilterData
