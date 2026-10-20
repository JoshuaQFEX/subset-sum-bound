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

def filter_16 : RawFilter := ⟨(103481 / 100000 : ℚ), [(4181 / 5000 : ℚ), (26667 / 50000 : ℚ), (22789 / 50000 : ℚ), (-40199 / 100000 : ℚ), (-14599 / 50000 : ℚ), (-59 / 5000 : ℚ), (13571 / 50000 : ℚ), (613 / 50000 : ℚ)], [(56667 / 50000 : ℚ), (-18193 / 25000 : ℚ), (46413 / 100000 : ℚ), (26541 / 100000 : ℚ), (-14271 / 50000 : ℚ), (8643 / 100000 : ℚ), (2861 / 20000 : ℚ), (-233 / 6250 : ℚ)]⟩
theorem filter_16_valid : ValidFilter filter_16 := by
  decide +kernel

def certificate_16_0 : RawCertificate := ⟨16, 0, [24, 28, 32, 38], [(84893 / 10000 : ℚ), (0 / 1 : ℚ), (9621 / 10000 : ℚ), (4743 / 10000 : ℚ), (47923 / 10000 : ℚ), (1109 / 250 : ℚ)]⟩
theorem certificate_16_0_valid : ValidCertificate certificate_16_0 := by
  decide +kernel
theorem certificate_16_0_cap : FirstCap certificate_16_0 := by
  decide +kernel

def certificate_16_1 : RawCertificate := ⟨16, 1, [24, 28, 32, 38], [(39629 / 5000 : ℚ), (9111 / 10000 : ℚ), (0 / 1 : ℚ), (5309 / 2500 : ℚ), (5031 / 5000 : ℚ), (1047 / 250 : ℚ), (5353 / 2000 : ℚ)]⟩
theorem certificate_16_1_valid : ValidCertificate certificate_16_1 := by
  decide +kernel
theorem certificate_16_1_cap : FirstCap certificate_16_1 := by
  decide +kernel

def certificate_16_2 : RawCertificate := ⟨16, 2, [3, 4, 10, 11, 13, 20, 22], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (160979 / 10000 : ℚ), (191761 / 10000 : ℚ), (4739 / 2500 : ℚ), (307 / 8 : ℚ), (182841 / 5000 : ℚ), (257049 / 10000 : ℚ), (53119 / 2500 : ℚ)]⟩
theorem certificate_16_2_valid : ValidCertificate certificate_16_2 := by
  decide +kernel
theorem certificate_16_2_cap : FirstCap certificate_16_2 := by
  decide +kernel

def certificate_16_3 : RawCertificate := ⟨16, 3, [3, 4, 10, 11, 13, 20, 22], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (156679 / 10000 : ℚ), (47737 / 2500 : ℚ), (813 / 625 : ℚ), (178587 / 5000 : ℚ), (180289 / 5000 : ℚ), (126133 / 5000 : ℚ), (50797 / 2500 : ℚ)]⟩
theorem certificate_16_3_valid : ValidCertificate certificate_16_3 := by
  decide +kernel
theorem certificate_16_3_cap : FirstCap certificate_16_3 := by
  decide +kernel

def certificate_16_4 : RawCertificate := ⟨16, 4, [3, 4, 10, 11, 13, 20, 22], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (153611 / 10000 : ℚ), (9519 / 500 : ℚ), (8753 / 10000 : ℚ), (42281 / 1250 : ℚ), (44617 / 1250 : ℚ), (124449 / 5000 : ℚ), (196629 / 10000 : ℚ)]⟩
theorem certificate_16_4_valid : ValidCertificate certificate_16_4 := by
  decide +kernel
theorem certificate_16_4_cap : FirstCap certificate_16_4 := by
  decide +kernel

def certificate_16_5 : RawCertificate := ⟨16, 5, [3, 4, 10, 11, 13, 20, 22], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (75391 / 5000 : ℚ), (37973 / 2000 : ℚ), (4823 / 10000 : ℚ), (320821 / 10000 : ℚ), (14143 / 400 : ℚ), (245823 / 10000 : ℚ), (47657 / 2500 : ℚ)]⟩
theorem certificate_16_5_valid : ValidCertificate certificate_16_5 := by
  decide +kernel
theorem certificate_16_5_cap : FirstCap certificate_16_5 := by
  decide +kernel

def certificate_16_6 : RawCertificate := ⟨16, 6, [3, 4, 10, 11, 13, 20, 22], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (148359 / 10000 : ℚ), (189431 / 10000 : ℚ), (363 / 2500 : ℚ), (61183 / 2000 : ℚ), (350697 / 10000 : ℚ), (243213 / 10000 : ℚ), (46381 / 2500 : ℚ)]⟩
theorem certificate_16_6_valid : ValidCertificate certificate_16_6 := by
  decide +kernel
theorem certificate_16_6_cap : FirstCap certificate_16_6 := by
  decide +kernel

def certificate_16_7 : RawCertificate := ⟨16, 7, [3, 4, 11, 13, 20, 22], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (146603 / 10000 : ℚ), (47091 / 2500 : ℚ), (295641 / 10000 : ℚ), (87023 / 2500 : ℚ), (119971 / 5000 : ℚ), (9071 / 500 : ℚ)]⟩
theorem certificate_16_7_valid : ValidCertificate certificate_16_7 := by
  decide +kernel
theorem certificate_16_7_cap : FirstCap certificate_16_7 := by
  decide +kernel

def certificate_16_8 : RawCertificate := ⟨16, 8, [3, 4, 11, 13, 20, 22, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (145383 / 10000 : ℚ), (93311 / 5000 : ℚ), (72019 / 2500 : ℚ), (344859 / 10000 : ℚ), (235841 / 10000 : ℚ), (11118 / 625 : ℚ), (727 / 10000 : ℚ)]⟩
theorem certificate_16_8_valid : ValidCertificate certificate_16_8 := by
  decide +kernel
theorem certificate_16_8_cap : FirstCap certificate_16_8 := by
  decide +kernel

def certificate_16_9 : RawCertificate := ⟨16, 9, [3, 4, 11, 13, 20, 22, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (144499 / 10000 : ℚ), (184561 / 10000 : ℚ), (55859 / 2000 : ℚ), (339437 / 10000 : ℚ), (231421 / 10000 : ℚ), (174429 / 10000 : ℚ), (3763 / 10000 : ℚ)]⟩
theorem certificate_16_9_valid : ValidCertificate certificate_16_9 := by
  decide +kernel
theorem certificate_16_9_cap : FirstCap certificate_16_9 := by
  decide +kernel

def filter_16_certificates : List RawCertificate := [certificate_16_0, certificate_16_1, certificate_16_2, certificate_16_3, certificate_16_4, certificate_16_5, certificate_16_6, certificate_16_7, certificate_16_8, certificate_16_9]
theorem filter_16_certificates_count : filter_16_certificates.length = 10 := by rfl
theorem filter_16_certificates_valid : ∀ c ∈ filter_16_certificates, ValidCertificate c := by
  exact all_cons certificate_16_0_valid (all_cons certificate_16_1_valid (all_cons certificate_16_2_valid (all_cons certificate_16_3_valid (all_cons certificate_16_4_valid (all_cons certificate_16_5_valid (all_cons certificate_16_6_valid (all_cons certificate_16_7_valid (all_cons certificate_16_8_valid (all_cons certificate_16_9_valid (all_nil))))))))))
theorem filter_16_certificates_caps : ∀ c ∈ filter_16_certificates, FirstCap c := by
  exact all_cons certificate_16_0_cap (all_cons certificate_16_1_cap (all_cons certificate_16_2_cap (all_cons certificate_16_3_cap (all_cons certificate_16_4_cap (all_cons certificate_16_5_cap (all_cons certificate_16_6_cap (all_cons certificate_16_7_cap (all_cons certificate_16_8_cap (all_cons certificate_16_9_cap (all_nil))))))))))

end SubsetSum.FilterData
