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

def filter_11 : RawFilter := ⟨(103551 / 100000 : ℚ), [(84221 / 100000 : ℚ), (26879 / 50000 : ℚ), (18759 / 50000 : ℚ), (-42183 / 100000 : ℚ), (-31017 / 100000 : ℚ), (-51 / 10000 : ℚ), (6389 / 20000 : ℚ), (473 / 50000 : ℚ)], [(14161 / 12500 : ℚ), (-69997 / 100000 : ℚ), (35377 / 100000 : ℚ), (6877 / 20000 : ℚ), (-8687 / 25000 : ℚ), (2081 / 20000 : ℚ), (1547 / 10000 : ℚ), (-3961 / 100000 : ℚ)]⟩
theorem filter_11_valid : ValidFilter filter_11 := by
  decide +kernel

def certificate_11_0 : RawCertificate := ⟨11, 0, [23, 26, 30, 32], [(85281 / 10000 : ℚ), (0 / 1 : ℚ), (6981 / 1250 : ℚ), (21883 / 10000 : ℚ), (506 / 625 : ℚ), (32527 / 10000 : ℚ)]⟩
theorem certificate_11_0_valid : ValidCertificate certificate_11_0 := by
  decide +kernel
theorem certificate_11_0_cap : FirstCap certificate_11_0 := by
  decide +kernel

def certificate_11_1 : RawCertificate := ⟨11, 1, [16, 23, 26, 30, 32], [(83201 / 10000 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (129 / 625 : ℚ), (48721 / 10000 : ℚ), (1843 / 1000 : ℚ), (1303 / 2000 : ℚ), (1727 / 400 : ℚ)]⟩
theorem certificate_11_1_valid : ValidCertificate certificate_11_1 := by
  decide +kernel
theorem certificate_11_1_cap : FirstCap certificate_11_1 := by
  decide +kernel

def certificate_11_2 : RawCertificate := ⟨11, 2, [3, 4, 6, 21, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (68553 / 5000 : ℚ), (41153 / 2000 : ℚ), (44931 / 5000 : ℚ), (174401 / 10000 : ℚ), (66723 / 5000 : ℚ)]⟩
theorem certificate_11_2_valid : ValidCertificate certificate_11_2 := by
  decide +kernel
theorem certificate_11_2_cap : FirstCap certificate_11_2 := by
  decide +kernel

def certificate_11_3 : RawCertificate := ⟨11, 3, [3, 4, 6, 21, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (135737 / 10000 : ℚ), (199583 / 10000 : ℚ), (43441 / 5000 : ℚ), (32889 / 2000 : ℚ), (67277 / 5000 : ℚ)]⟩
theorem certificate_11_3_valid : ValidCertificate certificate_11_3 := by
  decide +kernel
theorem certificate_11_3_cap : FirstCap certificate_11_3 := by
  decide +kernel

def certificate_11_4 : RawCertificate := ⟨11, 4, [3, 4, 6, 21, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (134747 / 10000 : ℚ), (9761 / 500 : ℚ), (84779 / 10000 : ℚ), (157457 / 10000 : ℚ), (8459 / 625 : ℚ)]⟩
theorem certificate_11_4_valid : ValidCertificate certificate_11_4 := by
  decide +kernel
theorem certificate_11_4_cap : FirstCap certificate_11_4 := by
  decide +kernel

def certificate_11_5 : RawCertificate := ⟨11, 5, [3, 4, 6, 21, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (5353 / 400 : ℚ), (191233 / 10000 : ℚ), (82857 / 10000 : ℚ), (75549 / 5000 : ℚ), (136069 / 10000 : ℚ)]⟩
theorem certificate_11_5_valid : ValidCertificate certificate_11_5 := by
  decide +kernel
theorem certificate_11_5_cap : FirstCap certificate_11_5 := by
  decide +kernel

def certificate_11_6 : RawCertificate := ⟨11, 6, [3, 4, 6, 21, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (133027 / 10000 : ℚ), (37569 / 2000 : ℚ), (40613 / 5000 : ℚ), (36429 / 2500 : ℚ), (8543 / 625 : ℚ)]⟩
theorem certificate_11_6_valid : ValidCertificate certificate_11_6 := by
  decide +kernel
theorem certificate_11_6_cap : FirstCap certificate_11_6 := by
  decide +kernel

def certificate_11_7 : RawCertificate := ⟨11, 7, [3, 4, 6, 21, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (132331 / 10000 : ℚ), (46233 / 2500 : ℚ), (79823 / 10000 : ℚ), (28221 / 2000 : ℚ), (68611 / 5000 : ℚ)]⟩
theorem certificate_11_7_valid : ValidCertificate certificate_11_7 := by
  decide +kernel
theorem certificate_11_7_cap : FirstCap certificate_11_7 := by
  decide +kernel

def certificate_11_8 : RawCertificate := ⟨11, 8, [3, 4, 6, 21, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (65859 / 5000 : ℚ), (456 / 25 : ℚ), (15721 / 2000 : ℚ), (137109 / 10000 : ℚ), (137687 / 10000 : ℚ)]⟩
theorem certificate_11_8_valid : ValidCertificate certificate_11_8 := by
  decide +kernel
theorem certificate_11_8_cap : FirstCap certificate_11_8 := by
  decide +kernel

def certificate_11_9 : RawCertificate := ⟨11, 9, [3, 4, 6, 21, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (131239 / 10000 : ℚ), (180441 / 10000 : ℚ), (77663 / 10000 : ℚ), (67013 / 5000 : ℚ), (138047 / 10000 : ℚ)]⟩
theorem certificate_11_9_valid : ValidCertificate certificate_11_9 := by
  decide +kernel
theorem certificate_11_9_cap : FirstCap certificate_11_9 := by
  decide +kernel

def filter_11_certificates : List RawCertificate := [certificate_11_0, certificate_11_1, certificate_11_2, certificate_11_3, certificate_11_4, certificate_11_5, certificate_11_6, certificate_11_7, certificate_11_8, certificate_11_9]
theorem filter_11_certificates_count : filter_11_certificates.length = 10 := by rfl
theorem filter_11_certificates_valid : ∀ c ∈ filter_11_certificates, ValidCertificate c := by
  exact all_cons certificate_11_0_valid (all_cons certificate_11_1_valid (all_cons certificate_11_2_valid (all_cons certificate_11_3_valid (all_cons certificate_11_4_valid (all_cons certificate_11_5_valid (all_cons certificate_11_6_valid (all_cons certificate_11_7_valid (all_cons certificate_11_8_valid (all_cons certificate_11_9_valid (all_nil))))))))))
theorem filter_11_certificates_caps : ∀ c ∈ filter_11_certificates, FirstCap c := by
  exact all_cons certificate_11_0_cap (all_cons certificate_11_1_cap (all_cons certificate_11_2_cap (all_cons certificate_11_3_cap (all_cons certificate_11_4_cap (all_cons certificate_11_5_cap (all_cons certificate_11_6_cap (all_cons certificate_11_7_cap (all_cons certificate_11_8_cap (all_cons certificate_11_9_cap (all_nil))))))))))

end SubsetSum.FilterData
