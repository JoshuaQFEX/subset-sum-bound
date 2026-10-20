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

def filter_13 : RawFilter := ⟨(103419 / 100000 : ℚ), [(42587 / 50000 : ℚ), (14149 / 25000 : ℚ), (4823 / 12500 : ℚ), (-3491 / 10000 : ℚ), (-4223 / 25000 : ℚ), (23733 / 100000 : ℚ), (-649 / 2500 : ℚ), (2587 / 100000 : ℚ)], [(113489 / 100000 : ℚ), (-79903 / 100000 : ℚ), (26641 / 50000 : ℚ), (1833 / 10000 : ℚ), (-7999 / 50000 : ℚ), (-3787 / 50000 : ℚ), (-28489 / 100000 : ℚ), (-11 / 3125 : ℚ)]⟩
theorem filter_13_valid : ValidFilter filter_13 := by
  decide +kernel

def certificate_13_0 : RawCertificate := ⟨13, 0, [24, 26, 27, 32, 37], [(84877 / 10000 : ℚ), (0 / 1 : ℚ), (15069 / 5000 : ℚ), (43261 / 10000 : ℚ), (7017 / 2000 : ℚ), (4597 / 10000 : ℚ), (5967 / 10000 : ℚ)]⟩
theorem certificate_13_0_valid : ValidCertificate certificate_13_0 := by
  decide +kernel
theorem certificate_13_0_cap : FirstCap certificate_13_0 := by
  decide +kernel

def certificate_13_1 : RawCertificate := ⟨13, 1, [24, 26, 27, 37], [(38517 / 5000 : ℚ), (17489 / 10000 : ℚ), (0 / 1 : ℚ), (40823 / 10000 : ℚ), (38813 / 10000 : ℚ), (1471 / 2000 : ℚ), (1351 / 625 : ℚ)]⟩
theorem certificate_13_1_valid : ValidCertificate certificate_13_1 := by
  decide +kernel
theorem certificate_13_1_cap : FirstCap certificate_13_1 := by
  decide +kernel

def certificate_13_2 : RawCertificate := ⟨13, 2, [3, 6, 10, 20, 22], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (81929 / 5000 : ℚ), (38793 / 1000 : ℚ), (14471 / 1000 : ℚ), (14121 / 5000 : ℚ), (8844 / 625 : ℚ)]⟩
theorem certificate_13_2_valid : ValidCertificate certificate_13_2 := by
  decide +kernel
theorem certificate_13_2_cap : FirstCap certificate_13_2 := by
  decide +kernel

def certificate_13_3 : RawCertificate := ⟨13, 3, [3, 6, 10, 20, 22], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (79939 / 5000 : ℚ), (186413 / 5000 : ℚ), (143161 / 10000 : ℚ), (4473 / 2000 : ℚ), (135223 / 10000 : ℚ)]⟩
theorem certificate_13_3_valid : ValidCertificate certificate_13_3 := by
  decide +kernel
theorem certificate_13_3_cap : FirstCap certificate_13_3 := by
  decide +kernel

def certificate_13_4 : RawCertificate := ⟨13, 4, [3, 6, 10, 20, 22], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (39257 / 2500 : ℚ), (90509 / 2500 : ℚ), (71001 / 5000 : ℚ), (9101 / 5000 : ℚ), (16357 / 1250 : ℚ)]⟩
theorem certificate_13_4_valid : ValidCertificate certificate_13_4 := by
  decide +kernel
theorem certificate_13_4_cap : FirstCap certificate_13_4 := by
  decide +kernel

def certificate_13_5 : RawCertificate := ⟨13, 5, [3, 6, 10, 20, 22], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (154393 / 10000 : ℚ), (352077 / 10000 : ℚ), (8806 / 625 : ℚ), (2877 / 2000 : ℚ), (126911 / 10000 : ℚ)]⟩
theorem certificate_13_5_valid : ValidCertificate certificate_13_5 := by
  decide +kernel
theorem certificate_13_5_cap : FirstCap certificate_13_5 := by
  decide +kernel

def certificate_13_6 : RawCertificate := ⟨13, 6, [3, 6, 10, 20, 22], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (38033 / 2500 : ℚ), (42943 / 1250 : ℚ), (1749 / 125 : ℚ), (5567 / 5000 : ℚ), (61797 / 5000 : ℚ)]⟩
theorem certificate_13_6_valid : ValidCertificate certificate_13_6 := by
  decide +kernel
theorem certificate_13_6_cap : FirstCap certificate_13_6 := by
  decide +kernel

def certificate_13_7 : RawCertificate := ⟨13, 7, [3, 6, 10, 20, 22], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (15017 / 1000 : ℚ), (6723 / 200 : ℚ), (8691 / 625 : ℚ), (833 / 1000 : ℚ), (24153 / 2000 : ℚ)]⟩
theorem certificate_13_7_valid : ValidCertificate certificate_13_7 := by
  decide +kernel
theorem certificate_13_7_cap : FirstCap certificate_13_7 := by
  decide +kernel

def certificate_13_8 : RawCertificate := ⟨13, 8, [3, 6, 10, 20, 22], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (37113 / 2500 : ℚ), (82421 / 2500 : ℚ), (27657 / 2000 : ℚ), (368 / 625 : ℚ), (4733 / 400 : ℚ)]⟩
theorem certificate_13_8_valid : ValidCertificate certificate_13_8 := by
  decide +kernel
theorem certificate_13_8_cap : FirstCap certificate_13_8 := by
  decide +kernel

def certificate_13_9 : RawCertificate := ⟨13, 9, [3, 6, 10, 20, 22], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (29423 / 2000 : ℚ), (324657 / 10000 : ℚ), (34419 / 2500 : ℚ), (999 / 2500 : ℚ), (7278 / 625 : ℚ)]⟩
theorem certificate_13_9_valid : ValidCertificate certificate_13_9 := by
  decide +kernel
theorem certificate_13_9_cap : FirstCap certificate_13_9 := by
  decide +kernel

def filter_13_certificates : List RawCertificate := [certificate_13_0, certificate_13_1, certificate_13_2, certificate_13_3, certificate_13_4, certificate_13_5, certificate_13_6, certificate_13_7, certificate_13_8, certificate_13_9]
theorem filter_13_certificates_count : filter_13_certificates.length = 10 := by rfl
theorem filter_13_certificates_valid : ∀ c ∈ filter_13_certificates, ValidCertificate c := by
  exact all_cons certificate_13_0_valid (all_cons certificate_13_1_valid (all_cons certificate_13_2_valid (all_cons certificate_13_3_valid (all_cons certificate_13_4_valid (all_cons certificate_13_5_valid (all_cons certificate_13_6_valid (all_cons certificate_13_7_valid (all_cons certificate_13_8_valid (all_cons certificate_13_9_valid (all_nil))))))))))
theorem filter_13_certificates_caps : ∀ c ∈ filter_13_certificates, FirstCap c := by
  exact all_cons certificate_13_0_cap (all_cons certificate_13_1_cap (all_cons certificate_13_2_cap (all_cons certificate_13_3_cap (all_cons certificate_13_4_cap (all_cons certificate_13_5_cap (all_cons certificate_13_6_cap (all_cons certificate_13_7_cap (all_cons certificate_13_8_cap (all_cons certificate_13_9_cap (all_nil))))))))))

end SubsetSum.FilterData
