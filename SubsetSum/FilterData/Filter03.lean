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

def filter_3 : RawFilter := ⟨(3324 / 3125 : ℚ), [(257 / 400 : ℚ), (10927 / 20000 : ℚ), (73657 / 100000 : ℚ), (-56823 / 100000 : ℚ), (-21433 / 100000 : ℚ), (3123 / 100000 : ℚ), (-347 / 100000 : ℚ), (317 / 20000 : ℚ)], [(87763 / 100000 : ℚ), (-34633 / 50000 : ℚ), (73949 / 100000 : ℚ), (38951 / 100000 : ℚ), (-803 / 4000 : ℚ), (91 / 2500 : ℚ), (-2477 / 25000 : ℚ), (229 / 20000 : ℚ)]⟩
theorem filter_3_valid : ValidFilter filter_3 := by
  decide +kernel

def certificate_3_0 : RawCertificate := ⟨3, 0, [5, 16], [(17211 / 1000 : ℚ), (271977 / 10000 : ℚ), (41651 / 5000 : ℚ), (30053 / 10000 : ℚ)]⟩
theorem certificate_3_0_valid : ValidCertificate certificate_3_0 := by
  decide +kernel
theorem certificate_3_0_cap : FirstCap certificate_3_0 := by
  decide +kernel

def certificate_3_1 : RawCertificate := ⟨3, 1, [5, 8, 16, 35], [(77547 / 10000 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (42699 / 10000 : ℚ), (4527 / 2000 : ℚ), (461 / 1000 : ℚ), (2127 / 625 : ℚ)]⟩
theorem certificate_3_1_valid : ValidCertificate certificate_3_1 := by
  decide +kernel
theorem certificate_3_1_cap : FirstCap certificate_3_1 := by
  decide +kernel

def certificate_3_2 : RawCertificate := ⟨3, 2, [4, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (20281 / 2000 : ℚ), (4377 / 10000 : ℚ)]⟩
theorem certificate_3_2_valid : ValidCertificate certificate_3_2 := by
  decide +kernel
theorem certificate_3_2_cap : FirstCap certificate_3_2 := by
  decide +kernel

def certificate_3_3 : RawCertificate := ⟨3, 3, [4, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (19883 / 2000 : ℚ), (358 / 625 : ℚ)]⟩
theorem certificate_3_3_valid : ValidCertificate certificate_3_3 := by
  decide +kernel
theorem certificate_3_3_cap : FirstCap certificate_3_3 := by
  decide +kernel

def certificate_3_4 : RawCertificate := ⟨3, 4, [4, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (98013 / 10000 : ℚ), (1337 / 2000 : ℚ)]⟩
theorem certificate_3_4_valid : ValidCertificate certificate_3_4 := by
  decide +kernel
theorem certificate_3_4_cap : FirstCap certificate_3_4 := by
  decide +kernel

def certificate_3_5 : RawCertificate := ⟨3, 5, [4, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (96733 / 10000 : ℚ), (7561 / 10000 : ℚ)]⟩
theorem certificate_3_5_valid : ValidCertificate certificate_3_5 := by
  decide +kernel
theorem certificate_3_5_cap : FirstCap certificate_3_5 := by
  decide +kernel

def certificate_3_6 : RawCertificate := ⟨3, 6, [4, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (47823 / 5000 : ℚ), (8307 / 10000 : ℚ)]⟩
theorem certificate_3_6_valid : ValidCertificate certificate_3_6 := by
  decide +kernel
theorem certificate_3_6_cap : FirstCap certificate_3_6 := by
  decide +kernel

def certificate_3_7 : RawCertificate := ⟨3, 7, [4, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (94711 / 10000 : ℚ), (8949 / 10000 : ℚ)]⟩
theorem certificate_3_7_valid : ValidCertificate certificate_3_7 := by
  decide +kernel
theorem certificate_3_7_cap : FirstCap certificate_3_7 := by
  decide +kernel

def certificate_3_8 : RawCertificate := ⟨3, 8, [4, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (93899 / 10000 : ℚ), (2377 / 2500 : ℚ)]⟩
theorem certificate_3_8_valid : ValidCertificate certificate_3_8 := by
  decide +kernel
theorem certificate_3_8_cap : FirstCap certificate_3_8 := by
  decide +kernel

def certificate_3_9 : RawCertificate := ⟨3, 9, [4, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (93271 / 10000 : ℚ), (9941 / 10000 : ℚ)]⟩
theorem certificate_3_9_valid : ValidCertificate certificate_3_9 := by
  decide +kernel
theorem certificate_3_9_cap : FirstCap certificate_3_9 := by
  decide +kernel

def filter_3_certificates : List RawCertificate := [certificate_3_0, certificate_3_1, certificate_3_2, certificate_3_3, certificate_3_4, certificate_3_5, certificate_3_6, certificate_3_7, certificate_3_8, certificate_3_9]
theorem filter_3_certificates_count : filter_3_certificates.length = 10 := by rfl
theorem filter_3_certificates_valid : ∀ c ∈ filter_3_certificates, ValidCertificate c := by
  exact all_cons certificate_3_0_valid (all_cons certificate_3_1_valid (all_cons certificate_3_2_valid (all_cons certificate_3_3_valid (all_cons certificate_3_4_valid (all_cons certificate_3_5_valid (all_cons certificate_3_6_valid (all_cons certificate_3_7_valid (all_cons certificate_3_8_valid (all_cons certificate_3_9_valid (all_nil))))))))))
theorem filter_3_certificates_caps : ∀ c ∈ filter_3_certificates, FirstCap c := by
  exact all_cons certificate_3_0_cap (all_cons certificate_3_1_cap (all_cons certificate_3_2_cap (all_cons certificate_3_3_cap (all_cons certificate_3_4_cap (all_cons certificate_3_5_cap (all_cons certificate_3_6_cap (all_cons certificate_3_7_cap (all_cons certificate_3_8_cap (all_cons certificate_3_9_cap (all_nil))))))))))

end SubsetSum.FilterData
