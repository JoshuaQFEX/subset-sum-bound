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

def filter_25 : RawFilter := ⟨(103483 / 100000 : ℚ), [(4329 / 5000 : ℚ), (58243 / 100000 : ℚ), (25803 / 100000 : ℚ), (-7559 / 20000 : ℚ), (-12791 / 50000 : ℚ), (38649 / 100000 : ℚ), (-13267 / 50000 : ℚ), (5029 / 100000 : ℚ)], [(111181 / 100000 : ℚ), (-15047 / 20000 : ℚ), (371 / 1000 : ℚ), (25799 / 100000 : ℚ), (-26227 / 100000 : ℚ), (-3153 / 20000 : ℚ), (-12873 / 50000 : ℚ), (-107 / 20000 : ℚ)]⟩
theorem filter_25_valid : ValidFilter filter_25 := by
  decide +kernel

def certificate_25_0 : RawCertificate := ⟨25, 0, [23, 26, 29, 33], [(16831 / 2000 : ℚ), (0 / 1 : ℚ), (1507 / 2000 : ℚ), (39191 / 10000 : ℚ), (17781 / 2500 : ℚ), (13003 / 10000 : ℚ)]⟩
theorem certificate_25_0_valid : ValidCertificate certificate_25_0 := by
  decide +kernel
theorem certificate_25_0_cap : FirstCap certificate_25_0 := by
  decide +kernel

def certificate_25_1 : RawCertificate := ⟨25, 1, [21, 22, 26, 29, 32], [(80401 / 10000 : ℚ), (6077 / 10000 : ℚ), (0 / 1 : ℚ), (8529 / 10000 : ℚ), (811 / 10000 : ℚ), (3249 / 1000 : ℚ), (9149 / 2000 : ℚ), (42571 / 10000 : ℚ)]⟩
theorem certificate_25_1_valid : ValidCertificate certificate_25_1 := by
  decide +kernel
theorem certificate_25_1_cap : FirstCap certificate_25_1 := by
  decide +kernel

def certificate_25_2 : RawCertificate := ⟨25, 2, [3, 4, 6, 21], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (99933 / 10000 : ℚ), (34437 / 5000 : ℚ), (2511 / 2000 : ℚ), (993 / 2500 : ℚ)]⟩
theorem certificate_25_2_valid : ValidCertificate certificate_25_2 := by
  decide +kernel
theorem certificate_25_2_cap : FirstCap certificate_25_2 := by
  decide +kernel

def certificate_25_3 : RawCertificate := ⟨25, 3, [3, 4, 6, 21], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (19809 / 2000 : ℚ), (6813 / 1000 : ℚ), (1053 / 625 : ℚ), (2793 / 10000 : ℚ)]⟩
theorem certificate_25_3_valid : ValidCertificate certificate_25_3 := by
  decide +kernel
theorem certificate_25_3_cap : FirstCap certificate_25_3 := by
  decide +kernel

def certificate_25_4 : RawCertificate := ⟨25, 4, [3, 4, 6, 21], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (98391 / 10000 : ℚ), (16897 / 2500 : ℚ), (19831 / 10000 : ℚ), (1039 / 5000 : ℚ)]⟩
theorem certificate_25_4_valid : ValidCertificate certificate_25_4 := by
  decide +kernel
theorem certificate_25_4_cap : FirstCap certificate_25_4 := by
  decide +kernel

def certificate_25_5 : RawCertificate := ⟨25, 5, [3, 4, 6, 21], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (97773 / 10000 : ℚ), (1677 / 250 : ℚ), (5631 / 2500 : ℚ), (1507 / 10000 : ℚ)]⟩
theorem certificate_25_5_valid : ValidCertificate certificate_25_5 := by
  decide +kernel
theorem certificate_25_5_cap : FirstCap certificate_25_5 := by
  decide +kernel

def certificate_25_6 : RawCertificate := ⟨25, 6, [3, 4, 6, 21], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (97233 / 10000 : ℚ), (66639 / 10000 : ℚ), (6197 / 2500 : ℚ), (271 / 2500 : ℚ)]⟩
theorem certificate_25_6_valid : ValidCertificate certificate_25_6 := by
  decide +kernel
theorem certificate_25_6_cap : FirstCap certificate_25_6 := by
  decide +kernel

def certificate_25_7 : RawCertificate := ⟨25, 7, [3, 4, 6, 21], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (48379 / 5000 : ℚ), (33127 / 5000 : ℚ), (6679 / 2500 : ℚ), (191 / 2500 : ℚ)]⟩
theorem certificate_25_7_valid : ValidCertificate certificate_25_7 := by
  decide +kernel
theorem certificate_25_7_cap : FirstCap certificate_25_7 := by
  decide +kernel

def certificate_25_8 : RawCertificate := ⟨25, 8, [3, 4, 6, 21], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (96337 / 10000 : ℚ), (32957 / 5000 : ℚ), (28379 / 10000 : ℚ), (259 / 5000 : ℚ)]⟩
theorem certificate_25_8_valid : ValidCertificate certificate_25_8 := by
  decide +kernel
theorem certificate_25_8_cap : FirstCap certificate_25_8 := by
  decide +kernel

def certificate_25_9 : RawCertificate := ⟨25, 9, [3, 4, 6, 21], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (48003 / 5000 : ℚ), (4103 / 625 : ℚ), (29657 / 10000 : ℚ), (349 / 10000 : ℚ)]⟩
theorem certificate_25_9_valid : ValidCertificate certificate_25_9 := by
  decide +kernel
theorem certificate_25_9_cap : FirstCap certificate_25_9 := by
  decide +kernel

def filter_25_certificates : List RawCertificate := [certificate_25_0, certificate_25_1, certificate_25_2, certificate_25_3, certificate_25_4, certificate_25_5, certificate_25_6, certificate_25_7, certificate_25_8, certificate_25_9]
theorem filter_25_certificates_count : filter_25_certificates.length = 10 := by rfl
theorem filter_25_certificates_valid : ∀ c ∈ filter_25_certificates, ValidCertificate c := by
  exact all_cons certificate_25_0_valid (all_cons certificate_25_1_valid (all_cons certificate_25_2_valid (all_cons certificate_25_3_valid (all_cons certificate_25_4_valid (all_cons certificate_25_5_valid (all_cons certificate_25_6_valid (all_cons certificate_25_7_valid (all_cons certificate_25_8_valid (all_cons certificate_25_9_valid (all_nil))))))))))
theorem filter_25_certificates_caps : ∀ c ∈ filter_25_certificates, FirstCap c := by
  exact all_cons certificate_25_0_cap (all_cons certificate_25_1_cap (all_cons certificate_25_2_cap (all_cons certificate_25_3_cap (all_cons certificate_25_4_cap (all_cons certificate_25_5_cap (all_cons certificate_25_6_cap (all_cons certificate_25_7_cap (all_cons certificate_25_8_cap (all_cons certificate_25_9_cap (all_nil))))))))))

end SubsetSum.FilterData
