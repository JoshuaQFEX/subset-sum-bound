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

def filter_10 : RawFilter := ⟨(103567 / 100000 : ℚ), [(8321 / 10000 : ℚ), (52819 / 100000 : ℚ), (46889 / 100000 : ℚ), (-807 / 4000 : ℚ), (-21077 / 50000 : ℚ), (2037 / 50000 : ℚ), (6247 / 25000 : ℚ), (-309 / 5000 : ℚ)], [(23261 / 20000 : ℚ), (-4719 / 6250 : ℚ), (56489 / 100000 : ℚ), (7749 / 100000 : ℚ), (-3697 / 10000 : ℚ), (793 / 12500 : ℚ), (1039 / 20000 : ℚ), (77 / 800 : ℚ)]⟩
theorem filter_10_valid : ValidFilter filter_10 := by
  decide +kernel

def certificate_10_0 : RawCertificate := ⟨10, 0, [18, 23, 24, 37], [(1749 / 200 : ℚ), (1347 / 2000 : ℚ), (11431 / 10000 : ℚ), (5821 / 2500 : ℚ), (7897 / 2500 : ℚ), (8683 / 2000 : ℚ)]⟩
theorem certificate_10_0_valid : ValidCertificate certificate_10_0 := by
  decide +kernel
theorem certificate_10_0_cap : FirstCap certificate_10_0 := by
  decide +kernel

def certificate_10_1 : RawCertificate := ⟨10, 1, [23, 24, 37], [(83077 / 10000 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (2427 / 1000 : ℚ), (1997 / 400 : ℚ), (18757 / 5000 : ℚ)]⟩
theorem certificate_10_1_valid : ValidCertificate certificate_10_1 := by
  decide +kernel
theorem certificate_10_1_cap : FirstCap certificate_10_1 := by
  decide +kernel

def certificate_10_2 : RawCertificate := ⟨10, 2, [3, 4, 21, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (14079 / 1000 : ℚ), (55689 / 10000 : ℚ), (16859 / 5000 : ℚ), (8659 / 625 : ℚ)]⟩
theorem certificate_10_2_valid : ValidCertificate certificate_10_2 := by
  decide +kernel
theorem certificate_10_2_cap : FirstCap certificate_10_2 := by
  decide +kernel

def certificate_10_3 : RawCertificate := ⟨10, 3, [3, 4, 21, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (69523 / 5000 : ℚ), (53119 / 10000 : ℚ), (25519 / 10000 : ℚ), (35271 / 2500 : ℚ)]⟩
theorem certificate_10_3_valid : ValidCertificate certificate_10_3 := by
  decide +kernel
theorem certificate_10_3_cap : FirstCap certificate_10_3 := by
  decide +kernel

def certificate_10_4 : RawCertificate := ⟨10, 4, [3, 4, 21, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (137793 / 10000 : ℚ), (12821 / 2500 : ℚ), (2473 / 1250 : ℚ), (35721 / 2500 : ℚ)]⟩
theorem certificate_10_4_valid : ValidCertificate certificate_10_4 := by
  decide +kernel
theorem certificate_10_4_cap : FirstCap certificate_10_4 := by
  decide +kernel

def certificate_10_5 : RawCertificate := ⟨10, 5, [3, 4, 21, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (136629 / 10000 : ℚ), (49591 / 10000 : ℚ), (14579 / 10000 : ℚ), (28907 / 2000 : ℚ)]⟩
theorem certificate_10_5_valid : ValidCertificate certificate_10_5 := by
  decide +kernel
theorem certificate_10_5_cap : FirstCap certificate_10_5 := by
  decide +kernel

def certificate_10_6 : RawCertificate := ⟨10, 6, [3, 4, 21, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (33907 / 2500 : ℚ), (48141 / 10000 : ℚ), (2037 / 2000 : ℚ), (145941 / 10000 : ℚ)]⟩
theorem certificate_10_6_valid : ValidCertificate certificate_10_6 := by
  decide +kernel
theorem certificate_10_6_cap : FirstCap certificate_10_6 := by
  decide +kernel

def certificate_10_7 : RawCertificate := ⟨10, 7, [3, 4, 21, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (67379 / 5000 : ℚ), (23443 / 5000 : ℚ), (3213 / 5000 : ℚ), (147153 / 10000 : ℚ)]⟩
theorem certificate_10_7_valid : ValidCertificate certificate_10_7 := by
  decide +kernel
theorem certificate_10_7_cap : FirstCap certificate_10_7 := by
  decide +kernel

def certificate_10_8 : RawCertificate := ⟨10, 8, [3, 4, 21, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (66997 / 5000 : ℚ), (11447 / 2500 : ℚ), (127 / 400 : ℚ), (9263 / 625 : ℚ)]⟩
theorem certificate_10_8_valid : ValidCertificate certificate_10_8 := by
  decide +kernel
theorem certificate_10_8_cap : FirstCap certificate_10_8 := by
  decide +kernel

def certificate_10_9 : RawCertificate := ⟨10, 9, [3, 4, 21, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (66699 / 5000 : ℚ), (8987 / 2000 : ℚ), (67 / 1000 : ℚ), (5961 / 400 : ℚ)]⟩
theorem certificate_10_9_valid : ValidCertificate certificate_10_9 := by
  decide +kernel
theorem certificate_10_9_cap : FirstCap certificate_10_9 := by
  decide +kernel

def filter_10_certificates : List RawCertificate := [certificate_10_0, certificate_10_1, certificate_10_2, certificate_10_3, certificate_10_4, certificate_10_5, certificate_10_6, certificate_10_7, certificate_10_8, certificate_10_9]
theorem filter_10_certificates_count : filter_10_certificates.length = 10 := by rfl
theorem filter_10_certificates_valid : ∀ c ∈ filter_10_certificates, ValidCertificate c := by
  exact all_cons certificate_10_0_valid (all_cons certificate_10_1_valid (all_cons certificate_10_2_valid (all_cons certificate_10_3_valid (all_cons certificate_10_4_valid (all_cons certificate_10_5_valid (all_cons certificate_10_6_valid (all_cons certificate_10_7_valid (all_cons certificate_10_8_valid (all_cons certificate_10_9_valid (all_nil))))))))))
theorem filter_10_certificates_caps : ∀ c ∈ filter_10_certificates, FirstCap c := by
  exact all_cons certificate_10_0_cap (all_cons certificate_10_1_cap (all_cons certificate_10_2_cap (all_cons certificate_10_3_cap (all_cons certificate_10_4_cap (all_cons certificate_10_5_cap (all_cons certificate_10_6_cap (all_cons certificate_10_7_cap (all_cons certificate_10_8_cap (all_cons certificate_10_9_cap (all_nil))))))))))

end SubsetSum.FilterData
