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

def filter_18 : RawFilter := ⟨(51671 / 50000 : ℚ), [(43047 / 50000 : ℚ), (13267 / 25000 : ℚ), (163 / 400 : ℚ), (-35513 / 100000 : ℚ), (-17773 / 50000 : ℚ), (5519 / 20000 : ℚ), (10329 / 100000 : ℚ), (-51 / 50000 : ℚ)], [(22707 / 20000 : ℚ), (-70827 / 100000 : ℚ), (23611 / 50000 : ℚ), (21607 / 100000 : ℚ), (-28977 / 100000 : ℚ), (-15573 / 100000 : ℚ), (1549 / 25000 : ℚ), (-49 / 2000 : ℚ)]⟩
theorem filter_18_valid : ValidFilter filter_18 := by
  decide +kernel

def certificate_18_0 : RawCertificate := ⟨18, 0, [28, 31, 32, 37], [(1066 / 125 : ℚ), (0 / 1 : ℚ), (1423 / 2500 : ℚ), (14029 / 10000 : ℚ), (5177 / 1250 : ℚ), (47187 / 10000 : ℚ)]⟩
theorem certificate_18_0_valid : ValidCertificate certificate_18_0 := by
  decide +kernel
theorem certificate_18_0_cap : FirstCap certificate_18_0 := by
  decide +kernel

def certificate_18_1 : RawCertificate := ⟨18, 1, [24, 32, 35, 37, 42], [(15857 / 2000 : ℚ), (6389 / 5000 : ℚ), (0 / 1 : ℚ), (2637 / 1000 : ℚ), (25209 / 5000 : ℚ), (177 / 5000 : ℚ), (40037 / 10000 : ℚ), (7809 / 10000 : ℚ)]⟩
theorem certificate_18_1_valid : ValidCertificate certificate_18_1 := by
  decide +kernel
theorem certificate_18_1_cap : FirstCap certificate_18_1 := by
  decide +kernel

def certificate_18_2 : RawCertificate := ⟨18, 2, [4, 5, 10, 14, 15, 20, 23, 29], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (112099 / 10000 : ℚ), (46131 / 1250 : ℚ), (209929 / 10000 : ℚ), (45953 / 2000 : ℚ), (40 / 1 : ℚ), (10497 / 10000 : ℚ), (247907 / 10000 : ℚ), (276067 / 10000 : ℚ)]⟩
theorem certificate_18_2_valid : ValidCertificate certificate_18_2 := by
  decide +kernel
theorem certificate_18_2_cap : FirstCap certificate_18_2 := by
  decide +kernel

def certificate_18_3 : RawCertificate := ⟨18, 3, [4, 5, 10, 14, 15, 20, 23, 29], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (108137 / 10000 : ℚ), (181201 / 5000 : ℚ), (206667 / 10000 : ℚ), (217313 / 10000 : ℚ), (40 / 1 : ℚ), (1539 / 2000 : ℚ), (235879 / 10000 : ℚ), (275377 / 10000 : ℚ)]⟩
theorem certificate_18_3_valid : ValidCertificate certificate_18_3 := by
  decide +kernel
theorem certificate_18_3_cap : FirstCap certificate_18_3 := by
  decide +kernel

def certificate_18_4 : RawCertificate := ⟨18, 4, [4, 5, 10, 14, 15, 20, 23, 29], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (4213 / 400 : ℚ), (35763 / 1000 : ℚ), (40863 / 2000 : ℚ), (104239 / 5000 : ℚ), (40 / 1 : ℚ), (1159 / 2000 : ℚ), (56837 / 2500 : ℚ), (68721 / 2500 : ℚ)]⟩
theorem certificate_18_4_valid : ValidCertificate certificate_18_4 := by
  decide +kernel
theorem certificate_18_4_cap : FirstCap certificate_18_4 := by
  decide +kernel

def certificate_18_5 : RawCertificate := ⟨18, 5, [4, 5, 10, 14, 15, 20, 23, 29], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (102741 / 10000 : ℚ), (353209 / 10000 : ℚ), (20213 / 1000 : ℚ), (200367 / 10000 : ℚ), (40 / 1 : ℚ), (4111 / 10000 : ℚ), (219517 / 10000 : ℚ), (274429 / 10000 : ℚ)]⟩
theorem certificate_18_5_valid : ValidCertificate certificate_18_5 := by
  decide +kernel
theorem certificate_18_5_cap : FirstCap certificate_18_5 := by
  decide +kernel

def certificate_18_6 : RawCertificate := ⟨18, 6, [4, 5, 10, 14, 15, 20, 23, 29], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (12567 / 1250 : ℚ), (69881 / 2000 : ℚ), (40049 / 2000 : ℚ), (193447 / 10000 : ℚ), (40 / 1 : ℚ), (681 / 2500 : ℚ), (106419 / 5000 : ℚ), (274037 / 10000 : ℚ)]⟩
theorem certificate_18_6_valid : ValidCertificate certificate_18_6 := by
  decide +kernel
theorem certificate_18_6_cap : FirstCap certificate_18_6 := by
  decide +kernel

def certificate_18_7 : RawCertificate := ⟨18, 7, [4, 5, 10, 14, 15, 20, 23, 29], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (12329 / 1250 : ℚ), (3461 / 100 : ℚ), (39721 / 2000 : ℚ), (93737 / 5000 : ℚ), (40 / 1 : ℚ), (39 / 250 : ℚ), (103537 / 5000 : ℚ), (273699 / 10000 : ℚ)]⟩
theorem certificate_18_7_valid : ValidCertificate certificate_18_7 := by
  decide +kernel
theorem certificate_18_7_cap : FirstCap certificate_18_7 := by
  decide +kernel

def certificate_18_8 : RawCertificate := ⟨18, 8, [4, 5, 10, 14, 15, 20, 23, 29], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (96969 / 10000 : ℚ), (343203 / 10000 : ℚ), (98583 / 5000 : ℚ), (22783 / 1250 : ℚ), (40 / 1 : ℚ), (141 / 2500 : ℚ), (50513 / 2500 : ℚ), (273403 / 10000 : ℚ)]⟩
theorem certificate_18_8_valid : ValidCertificate certificate_18_8 := by
  decide +kernel
theorem certificate_18_8_cap : FirstCap certificate_18_8 := by
  decide +kernel

def certificate_18_9 : RawCertificate := ⟨18, 9, [4, 5, 10, 14, 15, 23, 29], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (9571 / 1000 : ℚ), (340869 / 10000 : ℚ), (4899 / 250 : ℚ), (178207 / 10000 : ℚ), (40 / 1 : ℚ), (198049 / 10000 : ℚ), (34149 / 1250 : ℚ)]⟩
theorem certificate_18_9_valid : ValidCertificate certificate_18_9 := by
  decide +kernel
theorem certificate_18_9_cap : FirstCap certificate_18_9 := by
  decide +kernel

def filter_18_certificates : List RawCertificate := [certificate_18_0, certificate_18_1, certificate_18_2, certificate_18_3, certificate_18_4, certificate_18_5, certificate_18_6, certificate_18_7, certificate_18_8, certificate_18_9]
theorem filter_18_certificates_count : filter_18_certificates.length = 10 := by rfl
theorem filter_18_certificates_valid : ∀ c ∈ filter_18_certificates, ValidCertificate c := by
  exact all_cons certificate_18_0_valid (all_cons certificate_18_1_valid (all_cons certificate_18_2_valid (all_cons certificate_18_3_valid (all_cons certificate_18_4_valid (all_cons certificate_18_5_valid (all_cons certificate_18_6_valid (all_cons certificate_18_7_valid (all_cons certificate_18_8_valid (all_cons certificate_18_9_valid (all_nil))))))))))
theorem filter_18_certificates_caps : ∀ c ∈ filter_18_certificates, FirstCap c := by
  exact all_cons certificate_18_0_cap (all_cons certificate_18_1_cap (all_cons certificate_18_2_cap (all_cons certificate_18_3_cap (all_cons certificate_18_4_cap (all_cons certificate_18_5_cap (all_cons certificate_18_6_cap (all_cons certificate_18_7_cap (all_cons certificate_18_8_cap (all_cons certificate_18_9_cap (all_nil))))))))))

end SubsetSum.FilterData
