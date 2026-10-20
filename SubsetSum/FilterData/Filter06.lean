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

def filter_6 : RawFilter := ⟨(25889 / 25000 : ℚ), [(87031 / 100000 : ℚ), (62799 / 100000 : ℚ), (1799 / 10000 : ℚ), (-17579 / 50000 : ℚ), (-9333 / 100000 : ℚ), (6447 / 20000 : ℚ), (-36841 / 100000 : ℚ), (11 / 800 : ℚ)], [(56941 / 50000 : ℚ), (-81379 / 100000 : ℚ), (36137 / 100000 : ℚ), (19229 / 100000 : ℚ), (-347 / 2500 : ℚ), (-5751 / 50000 : ℚ), (-3531 / 10000 : ℚ), (991 / 50000 : ℚ)]⟩
theorem filter_6_valid : ValidFilter filter_6 := by
  decide +kernel

def certificate_6_0 : RawCertificate := ⟨6, 0, [13, 25, 26, 33], [(20709 / 2000 : ℚ), (4961 / 1000 : ℚ), (5917 / 5000 : ℚ), (14261 / 2000 : ℚ), (7517 / 10000 : ℚ), (8509 / 2000 : ℚ)]⟩
theorem certificate_6_0_valid : ValidCertificate certificate_6_0 := by
  decide +kernel
theorem certificate_6_0_cap : FirstCap certificate_6_0 := by
  decide +kernel

def certificate_6_1 : RawCertificate := ⟨6, 1, [13, 21, 22, 25, 26], [(84537 / 10000 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (9983 / 2500 : ℚ), (851 / 1250 : ℚ), (4 / 5 : ℚ), (65429 / 10000 : ℚ), (14121 / 5000 : ℚ)]⟩
theorem certificate_6_1_valid : ValidCertificate certificate_6_1 := by
  decide +kernel
theorem certificate_6_1_cap : FirstCap certificate_6_1 := by
  decide +kernel

def certificate_6_2 : RawCertificate := ⟨6, 2, [3, 4, 21], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (90517 / 10000 : ℚ), (7463 / 1250 : ℚ), (499 / 10000 : ℚ)]⟩
theorem certificate_6_2_valid : ValidCertificate certificate_6_2 := by
  decide +kernel
theorem certificate_6_2_cap : FirstCap certificate_6_2 := by
  decide +kernel

def certificate_6_3 : RawCertificate := ⟨6, 3, [3, 4], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (22347 / 2500 : ℚ), (11619 / 2000 : ℚ)]⟩
theorem certificate_6_3_valid : ValidCertificate certificate_6_3 := by
  decide +kernel
theorem certificate_6_3_cap : FirstCap certificate_6_3 := by
  decide +kernel

def certificate_6_4 : RawCertificate := ⟨6, 4, [3, 4], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (88533 / 10000 : ℚ), (7111 / 1250 : ℚ)]⟩
theorem certificate_6_4_valid : ValidCertificate certificate_6_4 := by
  decide +kernel
theorem certificate_6_4_cap : FirstCap certificate_6_4 := by
  decide +kernel

def certificate_6_5 : RawCertificate := ⟨6, 5, [3, 4], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (87739 / 10000 : ℚ), (13947 / 2500 : ℚ)]⟩
theorem certificate_6_5_valid : ValidCertificate certificate_6_5 := by
  decide +kernel
theorem certificate_6_5_cap : FirstCap certificate_6_5 := by
  decide +kernel

def certificate_6_6 : RawCertificate := ⟨6, 6, [3, 4], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (5441 / 625 : ℚ), (10971 / 2000 : ℚ)]⟩
theorem certificate_6_6_valid : ValidCertificate certificate_6_6 := by
  decide +kernel
theorem certificate_6_6_cap : FirstCap certificate_6_6 := by
  decide +kernel

def certificate_6_7 : RawCertificate := ⟨6, 7, [3, 4], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (86461 / 10000 : ℚ), (10811 / 2000 : ℚ)]⟩
theorem certificate_6_7_valid : ValidCertificate certificate_6_7 := by
  decide +kernel
theorem certificate_6_7_cap : FirstCap certificate_6_7 := by
  decide +kernel

def certificate_6_8 : RawCertificate := ⟨6, 8, [3, 4], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (85939 / 10000 : ℚ), (667 / 125 : ℚ)]⟩
theorem certificate_6_8_valid : ValidCertificate certificate_6_8 := by
  decide +kernel
theorem certificate_6_8_cap : FirstCap certificate_6_8 := by
  decide +kernel

def certificate_6_9 : RawCertificate := ⟨6, 9, [3, 4], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (21383 / 2500 : ℚ), (52823 / 10000 : ℚ)]⟩
theorem certificate_6_9_valid : ValidCertificate certificate_6_9 := by
  decide +kernel
theorem certificate_6_9_cap : FirstCap certificate_6_9 := by
  decide +kernel

def filter_6_certificates : List RawCertificate := [certificate_6_0, certificate_6_1, certificate_6_2, certificate_6_3, certificate_6_4, certificate_6_5, certificate_6_6, certificate_6_7, certificate_6_8, certificate_6_9]
theorem filter_6_certificates_count : filter_6_certificates.length = 10 := by rfl
theorem filter_6_certificates_valid : ∀ c ∈ filter_6_certificates, ValidCertificate c := by
  exact all_cons certificate_6_0_valid (all_cons certificate_6_1_valid (all_cons certificate_6_2_valid (all_cons certificate_6_3_valid (all_cons certificate_6_4_valid (all_cons certificate_6_5_valid (all_cons certificate_6_6_valid (all_cons certificate_6_7_valid (all_cons certificate_6_8_valid (all_cons certificate_6_9_valid (all_nil))))))))))
theorem filter_6_certificates_caps : ∀ c ∈ filter_6_certificates, FirstCap c := by
  exact all_cons certificate_6_0_cap (all_cons certificate_6_1_cap (all_cons certificate_6_2_cap (all_cons certificate_6_3_cap (all_cons certificate_6_4_cap (all_cons certificate_6_5_cap (all_cons certificate_6_6_cap (all_cons certificate_6_7_cap (all_cons certificate_6_8_cap (all_cons certificate_6_9_cap (all_nil))))))))))

end SubsetSum.FilterData
