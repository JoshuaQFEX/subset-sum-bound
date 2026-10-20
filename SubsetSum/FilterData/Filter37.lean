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

def filter_37 : RawFilter := ⟨(51737 / 50000 : ℚ), [(85647 / 100000 : ℚ), (12999 / 25000 : ℚ), (10883 / 25000 : ℚ), (-1637 / 4000 : ℚ), (-30279 / 100000 : ℚ), (953 / 4000 : ℚ), (27 / 125 : ℚ), (-9533 / 50000 : ℚ)], [(11223 / 10000 : ℚ), (-8717 / 12500 : ℚ), (50061 / 100000 : ℚ), (20757 / 100000 : ℚ), (-3063 / 12500 : ℚ), (-711 / 5000 : ℚ), (12123 / 100000 : ℚ), (12733 / 100000 : ℚ)]⟩
theorem filter_37_valid : ValidFilter filter_37 := by
  decide +kernel

def certificate_37_0 : RawCertificate := ⟨37, 0, [28, 32, 34, 38, 39], [(423 / 50 : ℚ), (0 / 1 : ℚ), (337 / 200 : ℚ), (9313 / 2500 : ℚ), (173 / 2500 : ℚ), (2761 / 2000 : ℚ), (12413 / 10000 : ℚ)]⟩
theorem certificate_37_0_valid : ValidCertificate certificate_37_0 := by
  decide +kernel
theorem certificate_37_0_cap : FirstCap certificate_37_0 := by
  decide +kernel

def certificate_37_1 : RawCertificate := ⟨37, 1, [24, 28, 32, 38], [(19801 / 2500 : ℚ), (559 / 625 : ℚ), (0 / 1 : ℚ), (7723 / 10000 : ℚ), (10943 / 5000 : ℚ), (41463 / 10000 : ℚ), (1233 / 5000 : ℚ)]⟩
theorem certificate_37_1_valid : ValidCertificate certificate_37_1 := by
  decide +kernel
theorem certificate_37_1_cap : FirstCap certificate_37_1 := by
  decide +kernel

def certificate_37_2 : RawCertificate := ⟨37, 2, [3, 4, 5, 10, 21, 22, 23, 27], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (30313 / 5000 : ℚ), (119703 / 5000 : ℚ), (195339 / 5000 : ℚ), (38823 / 2500 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (43521 / 10000 : ℚ), (393821 / 10000 : ℚ)]⟩
theorem certificate_37_2_valid : ValidCertificate certificate_37_2 := by
  decide +kernel
theorem certificate_37_2_cap : FirstCap certificate_37_2 := by
  decide +kernel

def certificate_37_3 : RawCertificate := ⟨37, 3, [3, 4, 5, 10, 21, 22, 27], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (1181 / 200 : ℚ), (119547 / 5000 : ℚ), (387627 / 10000 : ℚ), (76263 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (189599 / 5000 : ℚ)]⟩
theorem certificate_37_3_valid : ValidCertificate certificate_37_3 := by
  decide +kernel
theorem certificate_37_3_cap : FirstCap certificate_37_3 := by
  decide +kernel

def certificate_37_4 : RawCertificate := ⟨37, 4, [3, 4, 5, 10, 21, 22, 27], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (14353 / 2500 : ℚ), (237059 / 10000 : ℚ), (388547 / 10000 : ℚ), (77551 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (366537 / 10000 : ℚ)]⟩
theorem certificate_37_4_valid : ValidCertificate certificate_37_4 := by
  decide +kernel
theorem certificate_37_4_cap : FirstCap certificate_37_4 := by
  decide +kernel

def certificate_37_5 : RawCertificate := ⟨37, 5, [3, 4, 5, 10, 21, 22, 27], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (3479 / 625 : ℚ), (234987 / 10000 : ℚ), (194241 / 5000 : ℚ), (156429 / 10000 : ℚ), (197037 / 5000 : ℚ), (40 / 1 : ℚ), (35909 / 1000 : ℚ)]⟩
theorem certificate_37_5_valid : ValidCertificate certificate_37_5 := by
  decide +kernel
theorem certificate_37_5_cap : FirstCap certificate_37_5 := by
  decide +kernel

def certificate_37_6 : RawCertificate := ⟨37, 6, [3, 4, 5, 10, 21, 22, 27], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (673 / 125 : ℚ), (232971 / 10000 : ℚ), (15493 / 400 : ℚ), (7813 / 500 : ℚ), (23833 / 625 : ℚ), (40 / 1 : ℚ), (179037 / 5000 : ℚ)]⟩
theorem certificate_37_6_valid : ValidCertificate certificate_37_6 := by
  decide +kernel
theorem certificate_37_6_cap : FirstCap certificate_37_6 := by
  decide +kernel

def certificate_37_7 : RawCertificate := ⟨37, 7, [3, 4, 5, 10, 21, 22, 27], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (52269 / 10000 : ℚ), (115611 / 5000 : ℚ), (3863 / 100 : ℚ), (19513 / 1250 : ℚ), (370339 / 10000 : ℚ), (40 / 1 : ℚ), (89299 / 2500 : ℚ)]⟩
theorem certificate_37_7_valid : ValidCertificate certificate_37_7 := by
  decide +kernel
theorem certificate_37_7_cap : FirstCap certificate_37_7 := by
  decide +kernel

def certificate_37_8 : RawCertificate := ⟨37, 8, [3, 4, 5, 10, 21, 22, 27], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (25451 / 5000 : ℚ), (229691 / 10000 : ℚ), (385387 / 10000 : ℚ), (155959 / 10000 : ℚ), (180383 / 5000 : ℚ), (40 / 1 : ℚ), (89107 / 2500 : ℚ)]⟩
theorem certificate_37_8_valid : ValidCertificate certificate_37_8 := by
  decide +kernel
theorem certificate_37_8_cap : FirstCap certificate_37_8 := by
  decide +kernel

def certificate_37_9 : RawCertificate := ⟨37, 9, [3, 4, 5, 10, 21, 22, 27], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (24921 / 5000 : ℚ), (114249 / 5000 : ℚ), (384667 / 10000 : ℚ), (155843 / 10000 : ℚ), (353349 / 10000 : ℚ), (40 / 1 : ℚ), (44479 / 1250 : ℚ)]⟩
theorem certificate_37_9_valid : ValidCertificate certificate_37_9 := by
  decide +kernel
theorem certificate_37_9_cap : FirstCap certificate_37_9 := by
  decide +kernel

def filter_37_certificates : List RawCertificate := [certificate_37_0, certificate_37_1, certificate_37_2, certificate_37_3, certificate_37_4, certificate_37_5, certificate_37_6, certificate_37_7, certificate_37_8, certificate_37_9]
theorem filter_37_certificates_count : filter_37_certificates.length = 10 := by rfl
theorem filter_37_certificates_valid : ∀ c ∈ filter_37_certificates, ValidCertificate c := by
  exact all_cons certificate_37_0_valid (all_cons certificate_37_1_valid (all_cons certificate_37_2_valid (all_cons certificate_37_3_valid (all_cons certificate_37_4_valid (all_cons certificate_37_5_valid (all_cons certificate_37_6_valid (all_cons certificate_37_7_valid (all_cons certificate_37_8_valid (all_cons certificate_37_9_valid (all_nil))))))))))
theorem filter_37_certificates_caps : ∀ c ∈ filter_37_certificates, FirstCap c := by
  exact all_cons certificate_37_0_cap (all_cons certificate_37_1_cap (all_cons certificate_37_2_cap (all_cons certificate_37_3_cap (all_cons certificate_37_4_cap (all_cons certificate_37_5_cap (all_cons certificate_37_6_cap (all_cons certificate_37_7_cap (all_cons certificate_37_8_cap (all_cons certificate_37_9_cap (all_nil))))))))))

end SubsetSum.FilterData
