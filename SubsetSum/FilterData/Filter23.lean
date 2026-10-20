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

def filter_23 : RawFilter := ⟨(51767 / 50000 : ℚ), [(85197 / 100000 : ℚ), (53211 / 100000 : ℚ), (20583 / 50000 : ℚ), (-10609 / 25000 : ℚ), (-31667 / 100000 : ℚ), (23063 / 100000 : ℚ), (12241 / 50000 : ℚ), (-2487 / 12500 : ℚ)], [(110977 / 100000 : ℚ), (-6779 / 10000 : ℚ), (45797 / 100000 : ℚ), (12287 / 50000 : ℚ), (-13871 / 50000 : ℚ), (-11887 / 100000 : ℚ), (13567 / 100000 : ℚ), (6493 / 50000 : ℚ)]⟩
theorem filter_23_valid : ValidFilter filter_23 := by
  decide +kernel

def certificate_23_0 : RawCertificate := ⟨23, 0, [32, 37, 38, 39], [(42327 / 5000 : ℚ), (0 / 1 : ℚ), (51563 / 10000 : ℚ), (16763 / 10000 : ℚ), (34869 / 10000 : ℚ), (183 / 125 : ℚ)]⟩
theorem certificate_23_0_valid : ValidCertificate certificate_23_0 := by
  decide +kernel
theorem certificate_23_0_cap : FirstCap certificate_23_0 := by
  decide +kernel

def certificate_23_1 : RawCertificate := ⟨23, 1, [32, 37, 38], [(79483 / 10000 : ℚ), (4057 / 5000 : ℚ), (0 / 1 : ℚ), (16853 / 2500 : ℚ), (21181 / 5000 : ℚ), (29363 / 10000 : ℚ)]⟩
theorem certificate_23_1_valid : ValidCertificate certificate_23_1 := by
  decide +kernel
theorem certificate_23_1_cap : FirstCap certificate_23_1 := by
  decide +kernel

def certificate_23_2 : RawCertificate := ⟨23, 2, [3, 4, 5, 21, 22, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (17993 / 1250 : ℚ), (168813 / 10000 : ℚ), (8107 / 1250 : ℚ), (40 / 1 : ℚ), (173881 / 10000 : ℚ), (74683 / 5000 : ℚ)]⟩
theorem certificate_23_2_valid : ValidCertificate certificate_23_2 := by
  decide +kernel
theorem certificate_23_2_cap : FirstCap certificate_23_2 := by
  decide +kernel

def certificate_23_3 : RawCertificate := ⟨23, 3, [3, 4, 5, 21, 22, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (138561 / 10000 : ℚ), (172811 / 10000 : ℚ), (15293 / 2000 : ℚ), (40 / 1 : ℚ), (9281 / 500 : ℚ), (143323 / 10000 : ℚ)]⟩
theorem certificate_23_3_valid : ValidCertificate certificate_23_3 := by
  decide +kernel
theorem certificate_23_3_cap : FirstCap certificate_23_3 := by
  decide +kernel

def certificate_23_4 : RawCertificate := ⟨23, 4, [3, 4, 5, 21, 22, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (13481 / 1000 : ℚ), (175523 / 10000 : ℚ), (10553 / 1250 : ℚ), (40 / 1 : ℚ), (38759 / 2000 : ℚ), (139093 / 10000 : ℚ)]⟩
theorem certificate_23_4_valid : ValidCertificate certificate_23_4 := by
  decide +kernel
theorem certificate_23_4_cap : FirstCap certificate_23_4 := by
  decide +kernel

def certificate_23_5 : RawCertificate := ⟨23, 5, [3, 4, 5, 21, 22, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (16427 / 1250 : ℚ), (177923 / 10000 : ℚ), (22883 / 2500 : ℚ), (40 / 1 : ℚ), (20119 / 1000 : ℚ), (541 / 40 : ℚ)]⟩
theorem certificate_23_5_valid : ValidCertificate certificate_23_5 := by
  decide +kernel
theorem certificate_23_5_cap : FirstCap certificate_23_5 := by
  decide +kernel

def certificate_23_6 : RawCertificate := ⟨23, 6, [3, 4, 5, 21, 22, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (32139 / 2500 : ℚ), (179903 / 10000 : ℚ), (97447 / 10000 : ℚ), (40 / 1 : ℚ), (103707 / 5000 : ℚ), (132003 / 10000 : ℚ)]⟩
theorem certificate_23_6_valid : ValidCertificate certificate_23_6 := by
  decide +kernel
theorem certificate_23_6_cap : FirstCap certificate_23_6 := by
  decide +kernel

def certificate_23_7 : RawCertificate := ⟨23, 7, [3, 4, 5, 20, 21, 22, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (126169 / 10000 : ℚ), (181677 / 10000 : ℚ), (12723 / 1250 : ℚ), (1387 / 10000 : ℚ), (40 / 1 : ℚ), (21231 / 1000 : ℚ), (25911 / 2000 : ℚ)]⟩
theorem certificate_23_7_valid : ValidCertificate certificate_23_7 := by
  decide +kernel
theorem certificate_23_7_cap : FirstCap certificate_23_7 := by
  decide +kernel

def certificate_23_8 : RawCertificate := ⟨23, 8, [3, 4, 5, 20, 21, 22, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (124127 / 10000 : ℚ), (183229 / 10000 : ℚ), (26311 / 2500 : ℚ), (3103 / 10000 : ℚ), (40 / 1 : ℚ), (216383 / 10000 : ℚ), (63781 / 5000 : ℚ)]⟩
theorem certificate_23_8_valid : ValidCertificate certificate_23_8 := by
  decide +kernel
theorem certificate_23_8_cap : FirstCap certificate_23_8 := by
  decide +kernel

def certificate_23_9 : RawCertificate := ⟨23, 9, [3, 4, 5, 20, 21, 22, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (30639 / 2500 : ℚ), (23051 / 1250 : ℚ), (53943 / 5000 : ℚ), (2207 / 5000 : ℚ), (40 / 1 : ℚ), (219519 / 10000 : ℚ), (126023 / 10000 : ℚ)]⟩
theorem certificate_23_9_valid : ValidCertificate certificate_23_9 := by
  decide +kernel
theorem certificate_23_9_cap : FirstCap certificate_23_9 := by
  decide +kernel

def filter_23_certificates : List RawCertificate := [certificate_23_0, certificate_23_1, certificate_23_2, certificate_23_3, certificate_23_4, certificate_23_5, certificate_23_6, certificate_23_7, certificate_23_8, certificate_23_9]
theorem filter_23_certificates_count : filter_23_certificates.length = 10 := by rfl
theorem filter_23_certificates_valid : ∀ c ∈ filter_23_certificates, ValidCertificate c := by
  exact all_cons certificate_23_0_valid (all_cons certificate_23_1_valid (all_cons certificate_23_2_valid (all_cons certificate_23_3_valid (all_cons certificate_23_4_valid (all_cons certificate_23_5_valid (all_cons certificate_23_6_valid (all_cons certificate_23_7_valid (all_cons certificate_23_8_valid (all_cons certificate_23_9_valid (all_nil))))))))))
theorem filter_23_certificates_caps : ∀ c ∈ filter_23_certificates, FirstCap c := by
  exact all_cons certificate_23_0_cap (all_cons certificate_23_1_cap (all_cons certificate_23_2_cap (all_cons certificate_23_3_cap (all_cons certificate_23_4_cap (all_cons certificate_23_5_cap (all_cons certificate_23_6_cap (all_cons certificate_23_7_cap (all_cons certificate_23_8_cap (all_cons certificate_23_9_cap (all_nil))))))))))

end SubsetSum.FilterData
