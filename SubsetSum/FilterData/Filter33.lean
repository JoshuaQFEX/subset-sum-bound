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

def filter_33 : RawFilter := ⟨(51699 / 50000 : ℚ), [(88051 / 100000 : ℚ), (50341 / 100000 : ℚ), (5111 / 12500 : ℚ), (-2823 / 6250 : ℚ), (-4657 / 20000 : ℚ), (23687 / 100000 : ℚ), (839 / 3125 : ℚ), (-21947 / 100000 : ℚ)], [(22427 / 20000 : ℚ), (-67729 / 100000 : ℚ), (46221 / 100000 : ℚ), (22873 / 100000 : ℚ), (-9071 / 50000 : ℚ), (-8741 / 50000 : ℚ), (3901 / 20000 : ℚ), (11387 / 100000 : ℚ)]⟩
theorem filter_33_valid : ValidFilter filter_33 := by
  decide +kernel

def certificate_33_0 : RawCertificate := ⟨33, 0, [31, 32, 34, 36, 40, 42], [(42429 / 5000 : ℚ), (0 / 1 : ℚ), (6407 / 10000 : ℚ), (36349 / 10000 : ℚ), (1836 / 625 : ℚ), (28963 / 10000 : ℚ), (13517 / 5000 : ℚ), (19 / 2000 : ℚ)]⟩
theorem certificate_33_0_valid : ValidCertificate certificate_33_0 := by
  decide +kernel
theorem certificate_33_0_cap : FirstCap certificate_33_0 := by
  decide +kernel

def certificate_33_1 : RawCertificate := ⟨33, 1, [27, 32, 34, 39, 40, 42], [(78569 / 10000 : ℚ), (13641 / 10000 : ℚ), (0 / 1 : ℚ), (937 / 5000 : ℚ), (30897 / 10000 : ℚ), (18933 / 10000 : ℚ), (10499 / 2500 : ℚ), (25299 / 2000 : ℚ), (4099 / 10000 : ℚ)]⟩
theorem certificate_33_1_valid : ValidCertificate certificate_33_1 := by
  decide +kernel
theorem certificate_33_1_cap : FirstCap certificate_33_1 := by
  decide +kernel

def certificate_33_2 : RawCertificate := ⟨33, 2, [3, 5, 21, 22, 23, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (142149 / 10000 : ℚ), (9381 / 10000 : ℚ), (40 / 1 : ℚ), (479 / 1250 : ℚ), (35713 / 2500 : ℚ), (292081 / 10000 : ℚ)]⟩
theorem certificate_33_2_valid : ValidCertificate certificate_33_2 := by
  decide +kernel
theorem certificate_33_2_cap : FirstCap certificate_33_2 := by
  decide +kernel

def certificate_33_3 : RawCertificate := ⟨33, 3, [3, 5, 21, 22, 23, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (3467 / 250 : ℚ), (1501 / 1000 : ℚ), (40 / 1 : ℚ), (8903 / 10000 : ℚ), (14057 / 1000 : ℚ), (11577 / 400 : ℚ)]⟩
theorem certificate_33_3_valid : ValidCertificate certificate_33_3 := by
  decide +kernel
theorem certificate_33_3_cap : FirstCap certificate_33_3 := by
  decide +kernel

def certificate_33_4 : RawCertificate := ⟨33, 4, [3, 5, 21, 22, 23, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (68121 / 5000 : ℚ), (4719 / 2500 : ℚ), (40 / 1 : ℚ), (12549 / 10000 : ℚ), (17353 / 1250 : ℚ), (71873 / 2500 : ℚ)]⟩
theorem certificate_33_4_valid : ValidCertificate certificate_33_4 := by
  decide +kernel
theorem certificate_33_4_cap : FirstCap certificate_33_4 := by
  decide +kernel

def certificate_33_5 : RawCertificate := ⟨33, 5, [3, 5, 21, 22, 23, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (134021 / 10000 : ℚ), (11167 / 5000 : ℚ), (40 / 1 : ℚ), (15929 / 10000 : ℚ), (34283 / 2500 : ℚ), (285683 / 10000 : ℚ)]⟩
theorem certificate_33_5_valid : ValidCertificate certificate_33_5 := by
  decide +kernel
theorem certificate_33_5_cap : FirstCap certificate_33_5 := by
  decide +kernel

def certificate_33_6 : RawCertificate := ⟨33, 6, [3, 5, 21, 22, 23, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (132139 / 10000 : ℚ), (12609 / 5000 : ℚ), (40 / 1 : ℚ), (4709 / 2500 : ℚ), (135621 / 10000 : ℚ), (142057 / 5000 : ℚ)]⟩
theorem certificate_33_6_valid : ValidCertificate certificate_33_6 := by
  decide +kernel
theorem certificate_33_6_cap : FirstCap certificate_33_6 := by
  decide +kernel

def certificate_33_7 : RawCertificate := ⟨33, 7, [3, 5, 21, 22, 23, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (32631 / 2500 : ℚ), (27657 / 10000 : ℚ), (40 / 1 : ℚ), (10681 / 5000 : ℚ), (13427 / 1000 : ℚ), (141371 / 5000 : ℚ)]⟩
theorem certificate_33_7_valid : ValidCertificate certificate_33_7 := by
  decide +kernel
theorem certificate_33_7_cap : FirstCap certificate_33_7 := by
  decide +kernel

def certificate_33_8 : RawCertificate := ⟨33, 8, [3, 5, 21, 22, 23, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (129123 / 10000 : ℚ), (7437 / 2500 : ℚ), (40 / 1 : ℚ), (2947 / 1250 : ℚ), (133057 / 10000 : ℚ), (281531 / 10000 : ℚ)]⟩
theorem certificate_33_8_valid : ValidCertificate certificate_33_8 := by
  decide +kernel
theorem certificate_33_8_cap : FirstCap certificate_33_8 := by
  decide +kernel

def certificate_33_9 : RawCertificate := ⟨33, 9, [3, 5, 21, 22, 23, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (128041 / 10000 : ℚ), (31347 / 10000 : ℚ), (40 / 1 : ℚ), (253 / 100 : ℚ), (132093 / 10000 : ℚ), (35073 / 1250 : ℚ)]⟩
theorem certificate_33_9_valid : ValidCertificate certificate_33_9 := by
  decide +kernel
theorem certificate_33_9_cap : FirstCap certificate_33_9 := by
  decide +kernel

def filter_33_certificates : List RawCertificate := [certificate_33_0, certificate_33_1, certificate_33_2, certificate_33_3, certificate_33_4, certificate_33_5, certificate_33_6, certificate_33_7, certificate_33_8, certificate_33_9]
theorem filter_33_certificates_count : filter_33_certificates.length = 10 := by rfl
theorem filter_33_certificates_valid : ∀ c ∈ filter_33_certificates, ValidCertificate c := by
  exact all_cons certificate_33_0_valid (all_cons certificate_33_1_valid (all_cons certificate_33_2_valid (all_cons certificate_33_3_valid (all_cons certificate_33_4_valid (all_cons certificate_33_5_valid (all_cons certificate_33_6_valid (all_cons certificate_33_7_valid (all_cons certificate_33_8_valid (all_cons certificate_33_9_valid (all_nil))))))))))
theorem filter_33_certificates_caps : ∀ c ∈ filter_33_certificates, FirstCap c := by
  exact all_cons certificate_33_0_cap (all_cons certificate_33_1_cap (all_cons certificate_33_2_cap (all_cons certificate_33_3_cap (all_cons certificate_33_4_cap (all_cons certificate_33_5_cap (all_cons certificate_33_6_cap (all_cons certificate_33_7_cap (all_cons certificate_33_8_cap (all_cons certificate_33_9_cap (all_nil))))))))))

end SubsetSum.FilterData
