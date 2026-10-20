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

def filter_4 : RawFilter := ⟨(3274 / 3125 : ℚ), [(76631 / 100000 : ℚ), (12229 / 20000 : ℚ), (24893 / 100000 : ℚ), (-41359 / 100000 : ℚ), (-24511 / 50000 : ℚ), (10407 / 100000 : ℚ), (-1777 / 100000 : ℚ), (5843 / 100000 : ℚ)], [(107613 / 100000 : ℚ), (-563 / 800 : ℚ), (20271 / 100000 : ℚ), (45459 / 100000 : ℚ), (-60319 / 100000 : ℚ), (1871 / 12500 : ℚ), (-10179 / 100000 : ℚ), (-4873 / 100000 : ℚ)]⟩
theorem filter_4_valid : ValidFilter filter_4 := by
  decide +kernel

def certificate_4_0 : RawCertificate := ⟨4, 0, [7, 11, 15, 25], [(26607 / 2500 : ℚ), (7303 / 1000 : ℚ), (8067 / 2000 : ℚ), (11143 / 10000 : ℚ), (1167 / 500 : ℚ), (38337 / 10000 : ℚ)]⟩
theorem certificate_4_0_valid : ValidCertificate certificate_4_0 := by
  decide +kernel
theorem certificate_4_0_cap : FirstCap certificate_4_0 := by
  decide +kernel

def certificate_4_1 : RawCertificate := ⟨4, 1, [11, 15, 30, 35], [(39477 / 5000 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (19351 / 10000 : ℚ), (35653 / 10000 : ℚ), (41533 / 10000 : ℚ), (477 / 500 : ℚ)]⟩
theorem certificate_4_1_valid : ValidCertificate certificate_4_1 := by
  decide +kernel
theorem certificate_4_1_cap : FirstCap certificate_4_1 := by
  decide +kernel

def certificate_4_2 : RawCertificate := ⟨4, 2, [3], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (11481 / 1000 : ℚ)]⟩
theorem certificate_4_2_valid : ValidCertificate certificate_4_2 := by
  decide +kernel
theorem certificate_4_2_cap : FirstCap certificate_4_2 := by
  decide +kernel

def certificate_4_3 : RawCertificate := ⟨4, 3, [3], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (113729 / 10000 : ℚ)]⟩
theorem certificate_4_3_valid : ValidCertificate certificate_4_3 := by
  decide +kernel
theorem certificate_4_3_cap : FirstCap certificate_4_3 := by
  decide +kernel

def certificate_4_4 : RawCertificate := ⟨4, 4, [3], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (28237 / 2500 : ℚ)]⟩
theorem certificate_4_4_valid : ValidCertificate certificate_4_4 := by
  decide +kernel
theorem certificate_4_4_cap : FirstCap certificate_4_4 := by
  decide +kernel

def certificate_4_5 : RawCertificate := ⟨4, 5, [3], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (56111 / 5000 : ℚ)]⟩
theorem certificate_4_5_valid : ValidCertificate certificate_4_5 := by
  decide +kernel
theorem certificate_4_5_cap : FirstCap certificate_4_5 := by
  decide +kernel

def certificate_4_6 : RawCertificate := ⟨4, 6, [3], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (22319 / 2000 : ℚ)]⟩
theorem certificate_4_6_valid : ValidCertificate certificate_4_6 := by
  decide +kernel
theorem certificate_4_6_cap : FirstCap certificate_4_6 := by
  decide +kernel

def certificate_4_7 : RawCertificate := ⟨4, 7, [3], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (13881 / 1250 : ℚ)]⟩
theorem certificate_4_7_valid : ValidCertificate certificate_4_7 := by
  decide +kernel
theorem certificate_4_7_cap : FirstCap certificate_4_7 := by
  decide +kernel

def certificate_4_8 : RawCertificate := ⟨4, 8, [3], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (110567 / 10000 : ℚ)]⟩
theorem certificate_4_8_valid : ValidCertificate certificate_4_8 := by
  decide +kernel
theorem certificate_4_8_cap : FirstCap certificate_4_8 := by
  decide +kernel

def certificate_4_9 : RawCertificate := ⟨4, 9, [3], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (6887 / 625 : ℚ)]⟩
theorem certificate_4_9_valid : ValidCertificate certificate_4_9 := by
  decide +kernel
theorem certificate_4_9_cap : FirstCap certificate_4_9 := by
  decide +kernel

def filter_4_certificates : List RawCertificate := [certificate_4_0, certificate_4_1, certificate_4_2, certificate_4_3, certificate_4_4, certificate_4_5, certificate_4_6, certificate_4_7, certificate_4_8, certificate_4_9]
theorem filter_4_certificates_count : filter_4_certificates.length = 10 := by rfl
theorem filter_4_certificates_valid : ∀ c ∈ filter_4_certificates, ValidCertificate c := by
  exact all_cons certificate_4_0_valid (all_cons certificate_4_1_valid (all_cons certificate_4_2_valid (all_cons certificate_4_3_valid (all_cons certificate_4_4_valid (all_cons certificate_4_5_valid (all_cons certificate_4_6_valid (all_cons certificate_4_7_valid (all_cons certificate_4_8_valid (all_cons certificate_4_9_valid (all_nil))))))))))
theorem filter_4_certificates_caps : ∀ c ∈ filter_4_certificates, FirstCap c := by
  exact all_cons certificate_4_0_cap (all_cons certificate_4_1_cap (all_cons certificate_4_2_cap (all_cons certificate_4_3_cap (all_cons certificate_4_4_cap (all_cons certificate_4_5_cap (all_cons certificate_4_6_cap (all_cons certificate_4_7_cap (all_cons certificate_4_8_cap (all_cons certificate_4_9_cap (all_nil))))))))))

end SubsetSum.FilterData
