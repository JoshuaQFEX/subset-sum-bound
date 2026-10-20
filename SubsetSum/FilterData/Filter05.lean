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

def filter_5 : RawFilter := ⟨(10433 / 10000 : ℚ), [(16699 / 20000 : ℚ), (46517 / 100000 : ℚ), (5449 / 10000 : ℚ), (-47927 / 100000 : ℚ), (-7681 / 100000 : ℚ), (17167 / 50000 : ℚ), (-1453 / 12500 : ℚ), (-63 / 12500 : ℚ)], [(108519 / 100000 : ℚ), (-35233 / 50000 : ℚ), (6481 / 10000 : ℚ), (22751 / 100000 : ℚ), (-3469 / 100000 : ℚ), (-5909 / 25000 : ℚ), (-382 / 3125 : ℚ), (97 / 10000 : ℚ)]⟩
theorem filter_5_valid : ValidFilter filter_5 := by
  decide +kernel

def certificate_5_0 : RawCertificate := ⟨5, 0, [9, 28, 33, 36, 38], [(19833 / 2000 : ℚ), (23409 / 5000 : ℚ), (103 / 40 : ℚ), (23437 / 10000 : ℚ), (16297 / 10000 : ℚ), (33531 / 10000 : ℚ), (509 / 5000 : ℚ)]⟩
theorem certificate_5_0_valid : ValidCertificate certificate_5_0 := by
  decide +kernel
theorem certificate_5_0_cap : FirstCap certificate_5_0 := by
  decide +kernel

def certificate_5_1 : RawCertificate := ⟨5, 1, [20, 28, 36], [(79993 / 10000 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (14983 / 10000 : ℚ), (21973 / 2500 : ℚ), (5363 / 10000 : ℚ)]⟩
theorem certificate_5_1_valid : ValidCertificate certificate_5_1 := by
  decide +kernel
theorem certificate_5_1_cap : FirstCap certificate_5_1 := by
  decide +kernel

def certificate_5_2 : RawCertificate := ⟨5, 2, [3, 14, 21, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (158577 / 10000 : ℚ), (8133 / 5000 : ℚ), (39777 / 5000 : ℚ), (62333 / 5000 : ℚ)]⟩
theorem certificate_5_2_valid : ValidCertificate certificate_5_2 := by
  decide +kernel
theorem certificate_5_2_cap : FirstCap certificate_5_2 := by
  decide +kernel

def certificate_5_3 : RawCertificate := ⟨5, 3, [3, 14, 21, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (155041 / 10000 : ℚ), (889 / 400 : ℚ), (8683 / 1250 : ℚ), (7618 / 625 : ℚ)]⟩
theorem certificate_5_3_valid : ValidCertificate certificate_5_3 := by
  decide +kernel
theorem certificate_5_3_cap : FirstCap certificate_5_3 := by
  decide +kernel

def certificate_5_4 : RawCertificate := ⟨5, 4, [3, 14, 21, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (152517 / 10000 : ℚ), (26369 / 10000 : ℚ), (12479 / 2000 : ℚ), (23991 / 2000 : ℚ)]⟩
theorem certificate_5_4_valid : ValidCertificate certificate_5_4 := by
  decide +kernel
theorem certificate_5_4_cap : FirstCap certificate_5_4 := by
  decide +kernel

def certificate_5_5 : RawCertificate := ⟨5, 5, [3, 14, 21, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (15019 / 1000 : ℚ), (3011 / 1000 : ℚ), (27987 / 5000 : ℚ), (7388 / 625 : ℚ)]⟩
theorem certificate_5_5_valid : ValidCertificate certificate_5_5 := by
  decide +kernel
theorem certificate_5_5_cap : FirstCap certificate_5_5 := by
  decide +kernel

def certificate_5_6 : RawCertificate := ⟨5, 6, [3, 14, 21, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (148197 / 10000 : ℚ), (16627 / 5000 : ℚ), (1011 / 200 : ℚ), (58369 / 5000 : ℚ)]⟩
theorem certificate_5_6_valid : ValidCertificate certificate_5_6 := by
  decide +kernel
theorem certificate_5_6_cap : FirstCap certificate_5_6 := by
  decide +kernel

def certificate_5_7 : RawCertificate := ⟨5, 7, [3, 14, 21, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (146471 / 10000 : ℚ), (8983 / 2500 : ℚ), (45909 / 10000 : ℚ), (28871 / 2500 : ℚ)]⟩
theorem certificate_5_7_valid : ValidCertificate certificate_5_7 := by
  decide +kernel
theorem certificate_5_7_cap : FirstCap certificate_5_7 := by
  decide +kernel

def certificate_5_8 : RawCertificate := ⟨5, 8, [3, 14, 21, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (144963 / 10000 : ℚ), (38239 / 10000 : ℚ), (20947 / 5000 : ℚ), (57201 / 5000 : ℚ)]⟩
theorem certificate_5_8_valid : ValidCertificate certificate_5_8 := by
  decide +kernel
theorem certificate_5_8_cap : FirstCap certificate_5_8 := by
  decide +kernel

def certificate_5_9 : RawCertificate := ⟨5, 9, [3, 14, 21, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (14379 / 1000 : ℚ), (4001 / 1000 : ℚ), (38801 / 10000 : ℚ), (11357 / 1000 : ℚ)]⟩
theorem certificate_5_9_valid : ValidCertificate certificate_5_9 := by
  decide +kernel
theorem certificate_5_9_cap : FirstCap certificate_5_9 := by
  decide +kernel

def filter_5_certificates : List RawCertificate := [certificate_5_0, certificate_5_1, certificate_5_2, certificate_5_3, certificate_5_4, certificate_5_5, certificate_5_6, certificate_5_7, certificate_5_8, certificate_5_9]
theorem filter_5_certificates_count : filter_5_certificates.length = 10 := by rfl
theorem filter_5_certificates_valid : ∀ c ∈ filter_5_certificates, ValidCertificate c := by
  exact all_cons certificate_5_0_valid (all_cons certificate_5_1_valid (all_cons certificate_5_2_valid (all_cons certificate_5_3_valid (all_cons certificate_5_4_valid (all_cons certificate_5_5_valid (all_cons certificate_5_6_valid (all_cons certificate_5_7_valid (all_cons certificate_5_8_valid (all_cons certificate_5_9_valid (all_nil))))))))))
theorem filter_5_certificates_caps : ∀ c ∈ filter_5_certificates, FirstCap c := by
  exact all_cons certificate_5_0_cap (all_cons certificate_5_1_cap (all_cons certificate_5_2_cap (all_cons certificate_5_3_cap (all_cons certificate_5_4_cap (all_cons certificate_5_5_cap (all_cons certificate_5_6_cap (all_cons certificate_5_7_cap (all_cons certificate_5_8_cap (all_cons certificate_5_9_cap (all_nil))))))))))

end SubsetSum.FilterData
