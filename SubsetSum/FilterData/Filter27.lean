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

def filter_27 : RawFilter := ⟨(25859 / 25000 : ℚ), [(43239 / 50000 : ℚ), (2639 / 5000 : ℚ), (41777 / 100000 : ℚ), (-40473 / 100000 : ℚ), (-1611 / 6250 : ℚ), (5183 / 20000 : ℚ), (24767 / 100000 : ℚ), (-20953 / 100000 : ℚ)], [(28087 / 25000 : ℚ), (-70627 / 100000 : ℚ), (50431 / 100000 : ℚ), (2193 / 12500 : ℚ), (-1137 / 6250 : ℚ), (-9527 / 50000 : ℚ), (17509 / 100000 : ℚ), (5723 / 50000 : ℚ)]⟩
theorem filter_27_valid : ValidFilter filter_27 := by
  decide +kernel

def certificate_27_0 : RawCertificate := ⟨27, 0, [28, 32, 34, 37, 39], [(8459 / 1000 : ℚ), (0 / 1 : ℚ), (15991 / 10000 : ℚ), (39299 / 10000 : ℚ), (1263 / 625 : ℚ), (1863 / 2000 : ℚ), (3097 / 2000 : ℚ)]⟩
theorem certificate_27_0_valid : ValidCertificate certificate_27_0 := by
  decide +kernel
theorem certificate_27_0_cap : FirstCap certificate_27_0 := by
  decide +kernel

def certificate_27_1 : RawCertificate := ⟨27, 1, [24, 28, 32, 34, 37], [(80031 / 10000 : ℚ), (6933 / 10000 : ℚ), (0 / 1 : ℚ), (297 / 625 : ℚ), (4407 / 2000 : ℚ), (21037 / 5000 : ℚ), (1369 / 5000 : ℚ), (9311 / 5000 : ℚ)]⟩
theorem certificate_27_1_valid : ValidCertificate certificate_27_1 := by
  decide +kernel
theorem certificate_27_1_cap : FirstCap certificate_27_1 := by
  decide +kernel

def certificate_27_2 : RawCertificate := ⟨27, 2, [3, 5, 6, 10, 14, 20, 21, 22, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (1183 / 100 : ℚ), (113211 / 10000 : ℚ), (20953 / 10000 : ℚ), (10831 / 5000 : ℚ), (6903 / 1250 : ℚ), (127911 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_27_2_valid : ValidCertificate certificate_27_2 := by
  decide +kernel
theorem certificate_27_2_cap : FirstCap certificate_27_2 := by
  decide +kernel

def certificate_27_3 : RawCertificate := ⟨27, 3, [3, 5, 6, 10, 14, 20, 21, 22, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (6621 / 625 : ℚ), (4011 / 250 : ℚ), (5969 / 2500 : ℚ), (2277 / 400 : ℚ), (9377 / 2500 : ℚ), (201871 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_27_3_valid : ValidCertificate certificate_27_3 := by
  decide +kernel
theorem certificate_27_3_cap : FirstCap certificate_27_3 := by
  decide +kernel

def certificate_27_4 : RawCertificate := ⟨27, 4, [3, 5, 6, 10, 14, 20, 21, 22, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (97151 / 10000 : ℚ), (1551 / 80 : ℚ), (25943 / 10000 : ℚ), (40961 / 5000 : ℚ), (24891 / 10000 : ℚ), (163639 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_27_4_valid : ValidCertificate certificate_27_4 := by
  decide +kernel
theorem certificate_27_4_cap : FirstCap certificate_27_4 := by
  decide +kernel

def certificate_27_5 : RawCertificate := ⟨27, 5, [3, 5, 6, 10, 14, 20, 21, 22, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (89077 / 10000 : ℚ), (224517 / 10000 : ℚ), (6959 / 2500 : ℚ), (20971 / 2000 : ℚ), (6637 / 5000 : ℚ), (128573 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_27_5_valid : ValidCertificate certificate_27_5 := by
  decide +kernel
theorem certificate_27_5_cap : FirstCap certificate_27_5 := by
  decide +kernel

def certificate_27_6 : RawCertificate := ⟨27, 6, [3, 5, 6, 10, 14, 20, 21, 22, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (41091 / 5000 : ℚ), (50123 / 2000 : ℚ), (29447 / 10000 : ℚ), (31101 / 2500 : ℚ), (3339 / 10000 : ℚ), (98687 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_27_6_valid : ValidCertificate certificate_27_6 := by
  decide +kernel
theorem certificate_27_6_cap : FirstCap certificate_27_6 := by
  decide +kernel

def certificate_27_7 : RawCertificate := ⟨27, 7, [3, 5, 6, 10, 20, 21, 22, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (19551 / 2500 : ℚ), (53051 / 2000 : ℚ), (15487 / 5000 : ℚ), (134489 / 10000 : ℚ), (85447 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_27_7_valid : ValidCertificate certificate_27_7 := by
  decide +kernel
theorem certificate_27_7_cap : FirstCap certificate_27_7 := by
  decide +kernel

def certificate_27_8 : RawCertificate := ⟨27, 8, [3, 5, 6, 10, 20, 21, 22, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (75837 / 10000 : ℚ), (273611 / 10000 : ℚ), (32381 / 10000 : ℚ), (34873 / 2500 : ℚ), (80907 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_27_8_valid : ValidCertificate certificate_27_8 := by
  decide +kernel
theorem certificate_27_8_cap : FirstCap certificate_27_8 := by
  decide +kernel

def certificate_27_9 : RawCertificate := ⟨27, 9, [3, 5, 6, 10, 20, 21, 22, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (37003 / 5000 : ℚ), (5601 / 200 : ℚ), (3347 / 1000 : ℚ), (35837 / 2500 : ℚ), (77427 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_27_9_valid : ValidCertificate certificate_27_9 := by
  decide +kernel
theorem certificate_27_9_cap : FirstCap certificate_27_9 := by
  decide +kernel

def filter_27_certificates : List RawCertificate := [certificate_27_0, certificate_27_1, certificate_27_2, certificate_27_3, certificate_27_4, certificate_27_5, certificate_27_6, certificate_27_7, certificate_27_8, certificate_27_9]
theorem filter_27_certificates_count : filter_27_certificates.length = 10 := by rfl
theorem filter_27_certificates_valid : ∀ c ∈ filter_27_certificates, ValidCertificate c := by
  exact all_cons certificate_27_0_valid (all_cons certificate_27_1_valid (all_cons certificate_27_2_valid (all_cons certificate_27_3_valid (all_cons certificate_27_4_valid (all_cons certificate_27_5_valid (all_cons certificate_27_6_valid (all_cons certificate_27_7_valid (all_cons certificate_27_8_valid (all_cons certificate_27_9_valid (all_nil))))))))))
theorem filter_27_certificates_caps : ∀ c ∈ filter_27_certificates, FirstCap c := by
  exact all_cons certificate_27_0_cap (all_cons certificate_27_1_cap (all_cons certificate_27_2_cap (all_cons certificate_27_3_cap (all_cons certificate_27_4_cap (all_cons certificate_27_5_cap (all_cons certificate_27_6_cap (all_cons certificate_27_7_cap (all_cons certificate_27_8_cap (all_cons certificate_27_9_cap (all_nil))))))))))

end SubsetSum.FilterData
