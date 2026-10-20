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

def filter_19 : RawFilter := ⟨(103267 / 100000 : ℚ), [(44147 / 50000 : ℚ), (51847 / 100000 : ℚ), (4811 / 12500 : ℚ), (-10547 / 25000 : ℚ), (-14651 / 50000 : ℚ), (13609 / 50000 : ℚ), (419 / 10000 : ℚ), (269 / 6250 : ℚ)], [(113389 / 100000 : ℚ), (-70929 / 100000 : ℚ), (43803 / 100000 : ℚ), (3509 / 12500 : ℚ), (-25033 / 100000 : ℚ), (-1817 / 12500 : ℚ), (43 / 2000 : ℚ), (-4351 / 50000 : ℚ)]⟩
theorem filter_19_valid : ValidFilter filter_19 := by
  decide +kernel

def certificate_19_0 : RawCertificate := ⟨19, 0, [23, 30, 31, 32, 37, 38], [(43049 / 5000 : ℚ), (0 / 1 : ℚ), (3903 / 10000 : ℚ), (543 / 2000 : ℚ), (45217 / 10000 : ℚ), (6071 / 2000 : ℚ), (13507 / 10000 : ℚ), (33631 / 10000 : ℚ)]⟩
theorem certificate_19_0_valid : ValidCertificate certificate_19_0 := by
  decide +kernel
theorem certificate_19_0_cap : FirstCap certificate_19_0 := by
  decide +kernel

def certificate_19_1 : RawCertificate := ⟨19, 1, [18, 23, 30, 31, 32, 37], [(34649 / 5000 : ℚ), (65593 / 10000 : ℚ), (0 / 1 : ℚ), (14487 / 10000 : ℚ), (1027 / 10000 : ℚ), (95421 / 5000 : ℚ), (112171 / 10000 : ℚ), (429 / 200 : ℚ), (105777 / 10000 : ℚ)]⟩
theorem certificate_19_1_valid : ValidCertificate certificate_19_1 := by
  decide +kernel
theorem certificate_19_1_cap : FirstCap certificate_19_1 := by
  decide +kernel

def certificate_19_2 : RawCertificate := ⟨19, 2, [4, 8, 9, 15, 22, 23, 30, 31, 35, 42], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40351 / 5000 : ℚ), (27437 / 10000 : ℚ), (22851 / 1000 : ℚ), (2329 / 5000 : ℚ), (481 / 625 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (39631 / 2000 : ℚ), (184227 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_19_2_valid : ValidCertificate certificate_19_2 := by
  decide +kernel
theorem certificate_19_2_cap : FirstCap certificate_19_2 := by
  decide +kernel

def certificate_19_3 : RawCertificate := ⟨19, 3, [4, 8, 9, 15, 23, 30, 31, 35, 42], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (38587 / 5000 : ℚ), (31069 / 10000 : ℚ), (231329 / 10000 : ℚ), (2313 / 2000 : ℚ), (199899 / 5000 : ℚ), (40 / 1 : ℚ), (164951 / 10000 : ℚ), (44583 / 2500 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_19_3_valid : ValidCertificate certificate_19_3 := by
  decide +kernel
theorem certificate_19_3_cap : FirstCap certificate_19_3 := by
  decide +kernel

def certificate_19_4 : RawCertificate := ⟨19, 4, [4, 8, 9, 15, 23, 30, 31, 35, 42], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (37117 / 5000 : ℚ), (31837 / 10000 : ℚ), (54923 / 2500 : ℚ), (14009 / 10000 : ℚ), (389229 / 10000 : ℚ), (40 / 1 : ℚ), (163843 / 10000 : ℚ), (181183 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_19_4_valid : ValidCertificate certificate_19_4 := by
  decide +kernel
theorem certificate_19_4_cap : FirstCap certificate_19_4 := by
  decide +kernel

def certificate_19_5 : RawCertificate := ⟨19, 5, [4, 8, 9, 15, 23, 30, 31, 35, 42], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (71497 / 10000 : ℚ), (32541 / 10000 : ℚ), (20871 / 1000 : ℚ), (2031 / 1250 : ℚ), (379523 / 10000 : ℚ), (40 / 1 : ℚ), (163157 / 10000 : ℚ), (7353 / 400 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_19_5_valid : ValidCertificate certificate_19_5 := by
  decide +kernel
theorem certificate_19_5_cap : FirstCap certificate_19_5 := by
  decide +kernel

def certificate_19_6 : RawCertificate := ⟨19, 6, [4, 8, 9, 15, 23, 30, 31, 35, 42], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (13827 / 2000 : ℚ), (33143 / 10000 : ℚ), (49779 / 2500 : ℚ), (18153 / 10000 : ℚ), (185621 / 5000 : ℚ), (40 / 1 : ℚ), (162823 / 10000 : ℚ), (186097 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_19_6_valid : ValidCertificate certificate_19_6 := by
  decide +kernel
theorem certificate_19_6_cap : FirstCap certificate_19_6 := by
  decide +kernel

def certificate_19_7 : RawCertificate := ⟨19, 7, [4, 8, 9, 15, 23, 30, 31, 35, 42], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (16769 / 2500 : ℚ), (16831 / 5000 : ℚ), (190673 / 10000 : ℚ), (4949 / 2500 : ℚ), (364093 / 10000 : ℚ), (40 / 1 : ℚ), (81357 / 5000 : ℚ), (188071 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_19_7_valid : ValidCertificate certificate_19_7 := by
  decide +kernel
theorem certificate_19_7_cap : FirstCap certificate_19_7 := by
  decide +kernel

def certificate_19_8 : RawCertificate := ⟨19, 8, [4, 8, 9, 15, 23, 30, 31, 35, 42], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (32633 / 5000 : ℚ), (8529 / 2500 : ℚ), (183189 / 10000 : ℚ), (849 / 400 : ℚ), (357859 / 10000 : ℚ), (40 / 1 : ℚ), (40689 / 2500 : ℚ), (189801 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_19_8_valid : ValidCertificate certificate_19_8 := by
  decide +kernel
theorem certificate_19_8_cap : FirstCap certificate_19_8 := by
  decide +kernel

def certificate_19_9 : RawCertificate := ⟨19, 9, [4, 8, 9, 15, 23, 30, 31, 35, 42], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (1277 / 200 : ℚ), (34467 / 10000 : ℚ), (88647 / 5000 : ℚ), (5583 / 2500 : ℚ), (176511 / 5000 : ℚ), (40 / 1 : ℚ), (40723 / 2500 : ℚ), (95577 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_19_9_valid : ValidCertificate certificate_19_9 := by
  decide +kernel
theorem certificate_19_9_cap : FirstCap certificate_19_9 := by
  decide +kernel

def filter_19_certificates : List RawCertificate := [certificate_19_0, certificate_19_1, certificate_19_2, certificate_19_3, certificate_19_4, certificate_19_5, certificate_19_6, certificate_19_7, certificate_19_8, certificate_19_9]
theorem filter_19_certificates_count : filter_19_certificates.length = 10 := by rfl
theorem filter_19_certificates_valid : ∀ c ∈ filter_19_certificates, ValidCertificate c := by
  exact all_cons certificate_19_0_valid (all_cons certificate_19_1_valid (all_cons certificate_19_2_valid (all_cons certificate_19_3_valid (all_cons certificate_19_4_valid (all_cons certificate_19_5_valid (all_cons certificate_19_6_valid (all_cons certificate_19_7_valid (all_cons certificate_19_8_valid (all_cons certificate_19_9_valid (all_nil))))))))))
theorem filter_19_certificates_caps : ∀ c ∈ filter_19_certificates, FirstCap c := by
  exact all_cons certificate_19_0_cap (all_cons certificate_19_1_cap (all_cons certificate_19_2_cap (all_cons certificate_19_3_cap (all_cons certificate_19_4_cap (all_cons certificate_19_5_cap (all_cons certificate_19_6_cap (all_cons certificate_19_7_cap (all_cons certificate_19_8_cap (all_cons certificate_19_9_cap (all_nil))))))))))

end SubsetSum.FilterData
