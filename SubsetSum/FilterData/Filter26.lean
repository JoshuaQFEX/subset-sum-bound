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

def filter_26 : RawFilter := ⟨(103467 / 100000 : ℚ), [(2684 / 3125 : ℚ), (27697 / 50000 : ℚ), (7283 / 20000 : ℚ), (-1711 / 4000 : ℚ), (-4049 / 20000 : ℚ), (13853 / 50000 : ℚ), (-21773 / 100000 : ℚ), (389 / 6250 : ℚ)], [(111769 / 100000 : ℚ), (-74839 / 100000 : ℚ), (46479 / 100000 : ℚ), (29293 / 100000 : ℚ), (-22279 / 100000 : ℚ), (-4131 / 50000 : ℚ), (-24819 / 100000 : ℚ), (-591 / 100000 : ℚ)]⟩
theorem filter_26_valid : ValidFilter filter_26 := by
  decide +kernel

def certificate_26_0 : RawCertificate := ⟨26, 0, [28, 32, 34, 38], [(10583 / 1250 : ℚ), (0 / 1 : ℚ), (6833 / 5000 : ℚ), (3346 / 625 : ℚ), (15467 / 10000 : ℚ), (14069 / 10000 : ℚ)]⟩
theorem certificate_26_0_valid : ValidCertificate certificate_26_0 := by
  decide +kernel
theorem certificate_26_0_cap : FirstCap certificate_26_0 := by
  decide +kernel

def certificate_26_1 : RawCertificate := ⟨26, 1, [24, 28, 32, 38], [(39781 / 5000 : ℚ), (9097 / 10000 : ℚ), (0 / 1 : ℚ), (4663 / 5000 : ℚ), (7913 / 5000 : ℚ), (45767 / 10000 : ℚ), (2789 / 1250 : ℚ)]⟩
theorem certificate_26_1_valid : ValidCertificate certificate_26_1 := by
  decide +kernel
theorem certificate_26_1_cap : FirstCap certificate_26_1 := by
  decide +kernel

def certificate_26_2 : RawCertificate := ⟨26, 2, [3, 4, 6, 11, 22, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (163611 / 10000 : ℚ), (17703 / 10000 : ℚ), (51 / 10 : ℚ), (61199 / 5000 : ℚ), (7279 / 500 : ℚ), (45833 / 1250 : ℚ)]⟩
theorem certificate_26_2_valid : ValidCertificate certificate_26_2 := by
  decide +kernel
theorem certificate_26_2_cap : FirstCap certificate_26_2 := by
  decide +kernel

def certificate_26_3 : RawCertificate := ⟨26, 3, [3, 4, 6, 11, 22, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (39879 / 2500 : ℚ), (20101 / 10000 : ℚ), (52357 / 10000 : ℚ), (56043 / 5000 : ℚ), (142607 / 10000 : ℚ), (174063 / 5000 : ℚ)]⟩
theorem certificate_26_3_valid : ValidCertificate certificate_26_3 := by
  decide +kernel
theorem certificate_26_3_cap : FirstCap certificate_26_3 := by
  decide +kernel

def certificate_26_4 : RawCertificate := ⟨26, 4, [3, 4, 6, 11, 22, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (156603 / 10000 : ℚ), (4357 / 2000 : ℚ), (26653 / 5000 : ℚ), (20959 / 2000 : ℚ), (28113 / 2000 : ℚ), (167503 / 5000 : ℚ)]⟩
theorem certificate_26_4_valid : ValidCertificate certificate_26_4 := by
  decide +kernel
theorem certificate_26_4_cap : FirstCap certificate_26_4 := by
  decide +kernel

def certificate_26_5 : RawCertificate := ⟨26, 5, [3, 4, 6, 11, 22, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (153923 / 10000 : ℚ), (11659 / 5000 : ℚ), (54167 / 10000 : ℚ), (98119 / 10000 : ℚ), (69369 / 5000 : ℚ), (40373 / 1250 : ℚ)]⟩
theorem certificate_26_5_valid : ValidCertificate certificate_26_5 := by
  decide +kernel
theorem certificate_26_5_cap : FirstCap certificate_26_5 := by
  decide +kernel

def certificate_26_6 : RawCertificate := ⟨26, 6, [3, 4, 6, 11, 22, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (75817 / 5000 : ℚ), (3077 / 1250 : ℚ), (27447 / 5000 : ℚ), (92439 / 10000 : ℚ), (8576 / 625 : ℚ), (312747 / 10000 : ℚ)]⟩
theorem certificate_26_6_valid : ValidCertificate certificate_26_6 := by
  decide +kernel
theorem certificate_26_6_cap : FirstCap certificate_26_6 := by
  decide +kernel

def certificate_26_7 : RawCertificate := ⟨26, 7, [3, 4, 6, 11, 22, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (29931 / 2000 : ℚ), (1608 / 625 : ℚ), (13879 / 2500 : ℚ), (43773 / 5000 : ℚ), (135929 / 10000 : ℚ), (12157 / 400 : ℚ)]⟩
theorem certificate_26_7_valid : ValidCertificate certificate_26_7 := by
  decide +kernel
theorem certificate_26_7_cap : FirstCap certificate_26_7 := by
  decide +kernel

def certificate_26_8 : RawCertificate := ⟨26, 8, [3, 4, 6, 11, 22, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (147927 / 10000 : ℚ), (26693 / 10000 : ℚ), (28027 / 5000 : ℚ), (10411 / 1250 : ℚ), (134827 / 10000 : ℚ), (74061 / 2500 : ℚ)]⟩
theorem certificate_26_8_valid : ValidCertificate certificate_26_8 := by
  decide +kernel
theorem certificate_26_8_cap : FirstCap certificate_26_8 := by
  decide +kernel

def certificate_26_9 : RawCertificate := ⟨26, 9, [3, 4, 6, 11, 22, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (146587 / 10000 : ℚ), (27437 / 10000 : ℚ), (14117 / 2500 : ℚ), (9999 / 1250 : ℚ), (26797 / 2000 : ℚ), (145147 / 5000 : ℚ)]⟩
theorem certificate_26_9_valid : ValidCertificate certificate_26_9 := by
  decide +kernel
theorem certificate_26_9_cap : FirstCap certificate_26_9 := by
  decide +kernel

def filter_26_certificates : List RawCertificate := [certificate_26_0, certificate_26_1, certificate_26_2, certificate_26_3, certificate_26_4, certificate_26_5, certificate_26_6, certificate_26_7, certificate_26_8, certificate_26_9]
theorem filter_26_certificates_count : filter_26_certificates.length = 10 := by rfl
theorem filter_26_certificates_valid : ∀ c ∈ filter_26_certificates, ValidCertificate c := by
  exact all_cons certificate_26_0_valid (all_cons certificate_26_1_valid (all_cons certificate_26_2_valid (all_cons certificate_26_3_valid (all_cons certificate_26_4_valid (all_cons certificate_26_5_valid (all_cons certificate_26_6_valid (all_cons certificate_26_7_valid (all_cons certificate_26_8_valid (all_cons certificate_26_9_valid (all_nil))))))))))
theorem filter_26_certificates_caps : ∀ c ∈ filter_26_certificates, FirstCap c := by
  exact all_cons certificate_26_0_cap (all_cons certificate_26_1_cap (all_cons certificate_26_2_cap (all_cons certificate_26_3_cap (all_cons certificate_26_4_cap (all_cons certificate_26_5_cap (all_cons certificate_26_6_cap (all_cons certificate_26_7_cap (all_cons certificate_26_8_cap (all_cons certificate_26_9_cap (all_nil))))))))))

end SubsetSum.FilterData
