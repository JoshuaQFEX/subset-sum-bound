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

def filter_15 : RawFilter := ⟨(51727 / 50000 : ℚ), [(84001 / 100000 : ℚ), (28627 / 50000 : ℚ), (38289 / 100000 : ℚ), (-2137 / 6250 : ℚ), (-9627 / 25000 : ℚ), (6761 / 25000 : ℚ), (4167 / 100000 : ℚ), (633 / 50000 : ℚ)], [(56479 / 50000 : ℚ), (-18751 / 25000 : ℚ), (2273 / 5000 : ℚ), (1353 / 6250 : ℚ), (-657 / 2000 : ℚ), (-11539 / 100000 : ℚ), (-469 / 50000 : ℚ), (-199 / 10000 : ℚ)]⟩
theorem filter_15_valid : ValidFilter filter_15 := by
  decide +kernel

def certificate_15_0 : RawCertificate := ⟨15, 0, [18, 24, 32, 35, 37], [(849 / 100 : ℚ), (0 / 1 : ℚ), (8847 / 10000 : ℚ), (6571 / 10000 : ℚ), (69361 / 10000 : ℚ), (2251 / 5000 : ℚ), (5381 / 2500 : ℚ)]⟩
theorem certificate_15_0_valid : ValidCertificate certificate_15_0 := by
  decide +kernel
theorem certificate_15_0_cap : FirstCap certificate_15_0 := by
  decide +kernel

def certificate_15_1 : RawCertificate := ⟨15, 1, [23, 24, 32, 35], [(771 / 100 : ℚ), (16389 / 10000 : ℚ), (0 / 1 : ℚ), (1357 / 2000 : ℚ), (45247 / 10000 : ℚ), (3824 / 625 : ℚ), (1847 / 5000 : ℚ)]⟩
theorem certificate_15_1_valid : ValidCertificate certificate_15_1 := by
  decide +kernel
theorem certificate_15_1_cap : FirstCap certificate_15_1 := by
  decide +kernel

def certificate_15_2 : RawCertificate := ⟨15, 2, [3, 4, 8, 10, 14, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (149333 / 10000 : ℚ), (83983 / 5000 : ℚ), (234241 / 10000 : ℚ), (20443 / 1000 : ℚ), (40 / 1 : ℚ), (10931 / 625 : ℚ)]⟩
theorem certificate_15_2_valid : ValidCertificate certificate_15_2 := by
  decide +kernel
theorem certificate_15_2_cap : FirstCap certificate_15_2 := by
  decide +kernel

def certificate_15_3 : RawCertificate := ⟨15, 3, [3, 4, 8, 10, 14, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (18381 / 1250 : ℚ), (164281 / 10000 : ℚ), (118773 / 5000 : ℚ), (100183 / 5000 : ℚ), (40 / 1 : ℚ), (82623 / 5000 : ℚ)]⟩
theorem certificate_15_3_valid : ValidCertificate certificate_15_3 := by
  decide +kernel
theorem certificate_15_3_cap : FirstCap certificate_15_3 := by
  decide +kernel

def certificate_15_4 : RawCertificate := ⟨15, 4, [3, 4, 8, 10, 14, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (145413 / 10000 : ℚ), (20209 / 1250 : ℚ), (119947 / 5000 : ℚ), (197531 / 10000 : ℚ), (40 / 1 : ℚ), (31687 / 2000 : ℚ)]⟩
theorem certificate_15_4_valid : ValidCertificate certificate_15_4 := by
  decide +kernel
theorem certificate_15_4_cap : FirstCap certificate_15_4 := by
  decide +kernel

def certificate_15_5 : RawCertificate := ⟨15, 5, [3, 4, 8, 10, 14, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (71951 / 5000 : ℚ), (79641 / 5000 : ℚ), (121027 / 5000 : ℚ), (97481 / 5000 : ℚ), (40 / 1 : ℚ), (15221 / 1000 : ℚ)]⟩
theorem certificate_15_5_valid : ValidCertificate certificate_15_5 := by
  decide +kernel
theorem certificate_15_5_cap : FirstCap certificate_15_5 := by
  decide +kernel

def certificate_15_6 : RawCertificate := ⟨15, 6, [3, 4, 8, 10, 14, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (71303 / 5000 : ℚ), (31449 / 2000 : ℚ), (121949 / 5000 : ℚ), (192797 / 10000 : ℚ), (40 / 1 : ℚ), (146919 / 10000 : ℚ)]⟩
theorem certificate_15_6_valid : ValidCertificate certificate_15_6 := by
  decide +kernel
theorem certificate_15_6_cap : FirstCap certificate_15_6 := by
  decide +kernel

def certificate_15_7 : RawCertificate := ⟨15, 7, [3, 4, 8, 10, 14, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (28293 / 2000 : ℚ), (155449 / 10000 : ℚ), (245337 / 10000 : ℚ), (95437 / 5000 : ℚ), (399721 / 10000 : ℚ), (35607 / 2500 : ℚ)]⟩
theorem certificate_15_7_valid : ValidCertificate certificate_15_7 := by
  decide +kernel
theorem certificate_15_7_cap : FirstCap certificate_15_7 := by
  decide +kernel

def certificate_15_8 : RawCertificate := ⟨15, 8, [3, 4, 8, 10, 14, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (139921 / 10000 : ℚ), (76207 / 5000 : ℚ), (120553 / 5000 : ℚ), (186607 / 10000 : ℚ), (389561 / 10000 : ℚ), (140657 / 10000 : ℚ)]⟩
theorem certificate_15_8_valid : ValidCertificate certificate_15_8 := by
  decide +kernel
theorem certificate_15_8_cap : FirstCap certificate_15_8 := by
  decide +kernel

def certificate_15_9 : RawCertificate := ⟨15, 9, [3, 4, 8, 10, 14, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (138719 / 10000 : ℚ), (75027 / 5000 : ℚ), (237797 / 10000 : ℚ), (183293 / 10000 : ℚ), (190817 / 5000 : ℚ), (139299 / 10000 : ℚ)]⟩
theorem certificate_15_9_valid : ValidCertificate certificate_15_9 := by
  decide +kernel
theorem certificate_15_9_cap : FirstCap certificate_15_9 := by
  decide +kernel

def filter_15_certificates : List RawCertificate := [certificate_15_0, certificate_15_1, certificate_15_2, certificate_15_3, certificate_15_4, certificate_15_5, certificate_15_6, certificate_15_7, certificate_15_8, certificate_15_9]
theorem filter_15_certificates_count : filter_15_certificates.length = 10 := by rfl
theorem filter_15_certificates_valid : ∀ c ∈ filter_15_certificates, ValidCertificate c := by
  exact all_cons certificate_15_0_valid (all_cons certificate_15_1_valid (all_cons certificate_15_2_valid (all_cons certificate_15_3_valid (all_cons certificate_15_4_valid (all_cons certificate_15_5_valid (all_cons certificate_15_6_valid (all_cons certificate_15_7_valid (all_cons certificate_15_8_valid (all_cons certificate_15_9_valid (all_nil))))))))))
theorem filter_15_certificates_caps : ∀ c ∈ filter_15_certificates, FirstCap c := by
  exact all_cons certificate_15_0_cap (all_cons certificate_15_1_cap (all_cons certificate_15_2_cap (all_cons certificate_15_3_cap (all_cons certificate_15_4_cap (all_cons certificate_15_5_cap (all_cons certificate_15_6_cap (all_cons certificate_15_7_cap (all_cons certificate_15_8_cap (all_cons certificate_15_9_cap (all_nil))))))))))

end SubsetSum.FilterData
