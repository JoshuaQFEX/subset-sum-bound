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

def filter_12 : RawFilter := ⟨(25829 / 25000 : ℚ), [(43637 / 50000 : ℚ), (1518 / 3125 : ℚ), (5651 / 12500 : ℚ), (-19197 / 50000 : ℚ), (-8759 / 25000 : ℚ), (1767 / 10000 : ℚ), (2249 / 25000 : ℚ), (3503 / 100000 : ℚ)], [(28733 / 25000 : ℚ), (-34717 / 50000 : ℚ), (12219 / 25000 : ℚ), (25489 / 100000 : ℚ), (-16071 / 50000 : ℚ), (-2711 / 50000 : ℚ), (1517 / 100000 : ℚ), (-1813 / 50000 : ℚ)]⟩
theorem filter_12_valid : ValidFilter filter_12 := by
  decide +kernel

def certificate_12_0 : RawCertificate := ⟨12, 0, [23, 31, 35, 36, 37], [(10723 / 1250 : ℚ), (0 / 1 : ℚ), (743 / 1250 : ℚ), (648 / 625 : ℚ), (3976 / 625 : ℚ), (40629 / 10000 : ℚ), (12871 / 5000 : ℚ)]⟩
theorem certificate_12_0_valid : ValidCertificate certificate_12_0 := by
  decide +kernel
theorem certificate_12_0_cap : FirstCap certificate_12_0 := by
  decide +kernel

def certificate_12_1 : RawCertificate := ⟨12, 1, [35, 36, 37], [(20193 / 2500 : ℚ), (9811 / 10000 : ℚ), (0 / 1 : ℚ), (5331 / 500 : ℚ), (45469 / 10000 : ℚ), (5553 / 2000 : ℚ)]⟩
theorem certificate_12_1_valid : ValidCertificate certificate_12_1 := by
  decide +kernel
theorem certificate_12_1_cap : FirstCap certificate_12_1 := by
  decide +kernel

def certificate_12_2 : RawCertificate := ⟨12, 2, [3, 4, 5, 10, 23], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (463 / 100 : ℚ), (75043 / 5000 : ℚ), (38807 / 2000 : ℚ), (26393 / 2500 : ℚ), (271491 / 10000 : ℚ)]⟩
theorem certificate_12_2_valid : ValidCertificate certificate_12_2 := by
  decide +kernel
theorem certificate_12_2_cap : FirstCap certificate_12_2 := by
  decide +kernel

def certificate_12_3 : RawCertificate := ⟨12, 3, [3, 4, 5, 10, 23], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (22913 / 5000 : ℚ), (147861 / 10000 : ℚ), (4783 / 250 : ℚ), (20923 / 2000 : ℚ), (131169 / 5000 : ℚ)]⟩
theorem certificate_12_3_valid : ValidCertificate certificate_12_3 := by
  decide +kernel
theorem certificate_12_3_cap : FirstCap certificate_12_3 := by
  decide +kernel

def certificate_12_4 : RawCertificate := ⟨12, 4, [3, 4, 5, 10, 23], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (4549 / 1000 : ℚ), (29251 / 2000 : ℚ), (94681 / 5000 : ℚ), (103957 / 10000 : ℚ), (51187 / 2000 : ℚ)]⟩
theorem certificate_12_4_valid : ValidCertificate certificate_12_4 := by
  decide +kernel
theorem certificate_12_4_cap : FirstCap certificate_12_4 := by
  decide +kernel

def certificate_12_5 : RawCertificate := ⟨12, 5, [3, 4, 5, 10, 23], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (2259 / 500 : ℚ), (3619 / 250 : ℚ), (187541 / 10000 : ℚ), (12921 / 1250 : ℚ), (250123 / 10000 : ℚ)]⟩
theorem certificate_12_5_valid : ValidCertificate certificate_12_5 := by
  decide +kernel
theorem certificate_12_5_cap : FirstCap certificate_12_5 := by
  decide +kernel

def certificate_12_6 : RawCertificate := ⟨12, 6, [3, 4, 5, 10, 23], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (11229 / 2500 : ℚ), (143469 / 10000 : ℚ), (185971 / 10000 : ℚ), (102877 / 10000 : ℚ), (15326 / 625 : ℚ)]⟩
theorem certificate_12_6_valid : ValidCertificate certificate_12_6 := by
  decide +kernel
theorem certificate_12_6_cap : FirstCap certificate_12_6 := by
  decide +kernel

def certificate_12_7 : RawCertificate := ⟨12, 7, [3, 4, 5, 10, 23, 35], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (44657 / 10000 : ℚ), (8889 / 625 : ℚ), (92247 / 5000 : ℚ), (102417 / 10000 : ℚ), (12037 / 500 : ℚ), (313 / 2000 : ℚ)]⟩
theorem certificate_12_7_valid : ValidCertificate certificate_12_7 := by
  decide +kernel
theorem certificate_12_7_cap : FirstCap certificate_12_7 := by
  decide +kernel

def certificate_12_8 : RawCertificate := ⟨12, 8, [3, 4, 5, 10, 23, 35], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (2767 / 625 : ℚ), (140499 / 10000 : ℚ), (91313 / 5000 : ℚ), (12723 / 1250 : ℚ), (235391 / 10000 : ℚ), (2789 / 2500 : ℚ)]⟩
theorem certificate_12_8_valid : ValidCertificate certificate_12_8 := by
  decide +kernel
theorem certificate_12_8_cap : FirstCap certificate_12_8 := by
  decide +kernel

def certificate_12_9 : RawCertificate := ⟨12, 9, [3, 4, 5, 10, 23, 35], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (43973 / 10000 : ℚ), (139159 / 10000 : ℚ), (7247 / 400 : ℚ), (50647 / 5000 : ℚ), (185 / 8 : ℚ), (4647 / 2500 : ℚ)]⟩
theorem certificate_12_9_valid : ValidCertificate certificate_12_9 := by
  decide +kernel
theorem certificate_12_9_cap : FirstCap certificate_12_9 := by
  decide +kernel

def filter_12_certificates : List RawCertificate := [certificate_12_0, certificate_12_1, certificate_12_2, certificate_12_3, certificate_12_4, certificate_12_5, certificate_12_6, certificate_12_7, certificate_12_8, certificate_12_9]
theorem filter_12_certificates_count : filter_12_certificates.length = 10 := by rfl
theorem filter_12_certificates_valid : ∀ c ∈ filter_12_certificates, ValidCertificate c := by
  exact all_cons certificate_12_0_valid (all_cons certificate_12_1_valid (all_cons certificate_12_2_valid (all_cons certificate_12_3_valid (all_cons certificate_12_4_valid (all_cons certificate_12_5_valid (all_cons certificate_12_6_valid (all_cons certificate_12_7_valid (all_cons certificate_12_8_valid (all_cons certificate_12_9_valid (all_nil))))))))))
theorem filter_12_certificates_caps : ∀ c ∈ filter_12_certificates, FirstCap c := by
  exact all_cons certificate_12_0_cap (all_cons certificate_12_1_cap (all_cons certificate_12_2_cap (all_cons certificate_12_3_cap (all_cons certificate_12_4_cap (all_cons certificate_12_5_cap (all_cons certificate_12_6_cap (all_cons certificate_12_7_cap (all_cons certificate_12_8_cap (all_cons certificate_12_9_cap (all_nil))))))))))

end SubsetSum.FilterData
