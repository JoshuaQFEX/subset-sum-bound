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

def filter_30 : RawFilter := ⟨(20683 / 20000 : ℚ), [(42909 / 50000 : ℚ), (13657 / 25000 : ℚ), (38759 / 100000 : ℚ), (-8867 / 20000 : ℚ), (-14577 / 50000 : ℚ), (27179 / 100000 : ℚ), (-1381 / 100000 : ℚ), (1601 / 50000 : ℚ)], [(6957 / 6250 : ℚ), (-35519 / 50000 : ℚ), (21831 / 50000 : ℚ), (7907 / 25000 : ℚ), (-28431 / 100000 : ℚ), (-1469 / 12500 : ℚ), (-1447 / 25000 : ℚ), (-4319 / 100000 : ℚ)]⟩
theorem filter_30_valid : ValidFilter filter_30 := by
  decide +kernel

def certificate_30_0 : RawCertificate := ⟨30, 0, [28, 31, 32, 38], [(84753 / 10000 : ℚ), (0 / 1 : ℚ), (3389 / 2500 : ℚ), (5581 / 5000 : ℚ), (11699 / 2500 : ℚ), (30421 / 10000 : ℚ)]⟩
theorem certificate_30_0_valid : ValidCertificate certificate_30_0 := by
  decide +kernel
theorem certificate_30_0_cap : FirstCap certificate_30_0 := by
  decide +kernel

def certificate_30_1 : RawCertificate := ⟨30, 1, [28, 32, 35, 38], [(15987 / 2000 : ℚ), (1549 / 2000 : ℚ), (0 / 1 : ℚ), (25639 / 10000 : ℚ), (7607 / 1250 : ℚ), (8719 / 10000 : ℚ), (1229 / 1000 : ℚ)]⟩
theorem certificate_30_1_valid : ValidCertificate certificate_30_1 := by
  decide +kernel
theorem certificate_30_1_cap : FirstCap certificate_30_1 := by
  decide +kernel

def certificate_30_2 : RawCertificate := ⟨30, 2, [4, 5, 8, 22, 26, 42], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (138069 / 5000 : ℚ), (6439 / 200 : ℚ), (7432 / 625 : ℚ), (18721 / 10000 : ℚ), (223933 / 10000 : ℚ), (41809 / 2500 : ℚ)]⟩
theorem certificate_30_2_valid : ValidCertificate certificate_30_2 := by
  decide +kernel
theorem certificate_30_2_cap : FirstCap certificate_30_2 := by
  decide +kernel

def certificate_30_3 : RawCertificate := ⟨30, 3, [4, 5, 8, 22, 25, 26, 42], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (26389 / 1000 : ℚ), (2597 / 80 : ℚ), (61069 / 5000 : ℚ), (3067 / 2000 : ℚ), (16203 / 10000 : ℚ), (39353 / 2000 : ℚ), (120937 / 10000 : ℚ)]⟩
theorem certificate_30_3_valid : ValidCertificate certificate_30_3 := by
  decide +kernel
theorem certificate_30_3_cap : FirstCap certificate_30_3 := by
  decide +kernel

def certificate_30_4 : RawCertificate := ⟨30, 4, [4, 5, 8, 22, 25, 26], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (48699 / 2000 : ℚ), (344861 / 10000 : ℚ), (125199 / 10000 : ℚ), (139 / 125 : ℚ), (12873 / 2000 : ℚ), (134941 / 10000 : ℚ)]⟩
theorem certificate_30_4_valid : ValidCertificate certificate_30_4 := by
  decide +kernel
theorem certificate_30_4_cap : FirstCap certificate_30_4 := by
  decide +kernel

def certificate_30_5 : RawCertificate := ⟨30, 5, [4, 5, 8, 22, 25, 26], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (59863 / 2500 : ℚ), (170207 / 5000 : ℚ), (1271 / 100 : ℚ), (951 / 1000 : ℚ), (62881 / 10000 : ℚ), (131063 / 10000 : ℚ)]⟩
theorem certificate_30_5_valid : ValidCertificate certificate_30_5 := by
  decide +kernel
theorem certificate_30_5_cap : FirstCap certificate_30_5 := by
  decide +kernel

def certificate_30_6 : RawCertificate := ⟨30, 6, [4, 5, 8, 22, 25, 26], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (235999 / 10000 : ℚ), (168303 / 5000 : ℚ), (128699 / 10000 : ℚ), (511 / 625 : ℚ), (15399 / 2500 : ℚ), (7986 / 625 : ℚ)]⟩
theorem certificate_30_6_valid : ValidCertificate certificate_30_6 := by
  decide +kernel
theorem certificate_30_6_cap : FirstCap certificate_30_6 := by
  decide +kernel

def certificate_30_7 : RawCertificate := ⟨30, 7, [4, 5, 8, 22, 25, 26], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (233017 / 10000 : ℚ), (333309 / 10000 : ℚ), (130061 / 10000 : ℚ), (1411 / 2000 : ℚ), (6047 / 1000 : ℚ), (124957 / 10000 : ℚ)]⟩
theorem certificate_30_7_valid : ValidCertificate certificate_30_7 := by
  decide +kernel
theorem certificate_30_7_cap : FirstCap certificate_30_7 := by
  decide +kernel

def certificate_30_8 : RawCertificate := ⟨30, 8, [4, 5, 8, 22, 25, 26], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (14401 / 625 : ℚ), (82607 / 2500 : ℚ), (26247 / 2000 : ℚ), (61 / 100 : ℚ), (59477 / 10000 : ℚ), (12251 / 1000 : ℚ)]⟩
theorem certificate_30_8_valid : ValidCertificate certificate_30_8 := by
  decide +kernel
theorem certificate_30_8_cap : FirstCap certificate_30_8 := by
  decide +kernel

def certificate_30_9 : RawCertificate := ⟨30, 9, [4, 5, 8, 22, 25, 26], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (228397 / 10000 : ℚ), (82047 / 2500 : ℚ), (132137 / 10000 : ℚ), (5373 / 10000 : ℚ), (587 / 100 : ℚ), (6031 / 500 : ℚ)]⟩
theorem certificate_30_9_valid : ValidCertificate certificate_30_9 := by
  decide +kernel
theorem certificate_30_9_cap : FirstCap certificate_30_9 := by
  decide +kernel

def filter_30_certificates : List RawCertificate := [certificate_30_0, certificate_30_1, certificate_30_2, certificate_30_3, certificate_30_4, certificate_30_5, certificate_30_6, certificate_30_7, certificate_30_8, certificate_30_9]
theorem filter_30_certificates_count : filter_30_certificates.length = 10 := by rfl
theorem filter_30_certificates_valid : ∀ c ∈ filter_30_certificates, ValidCertificate c := by
  exact all_cons certificate_30_0_valid (all_cons certificate_30_1_valid (all_cons certificate_30_2_valid (all_cons certificate_30_3_valid (all_cons certificate_30_4_valid (all_cons certificate_30_5_valid (all_cons certificate_30_6_valid (all_cons certificate_30_7_valid (all_cons certificate_30_8_valid (all_cons certificate_30_9_valid (all_nil))))))))))
theorem filter_30_certificates_caps : ∀ c ∈ filter_30_certificates, FirstCap c := by
  exact all_cons certificate_30_0_cap (all_cons certificate_30_1_cap (all_cons certificate_30_2_cap (all_cons certificate_30_3_cap (all_cons certificate_30_4_cap (all_cons certificate_30_5_cap (all_cons certificate_30_6_cap (all_cons certificate_30_7_cap (all_cons certificate_30_8_cap (all_cons certificate_30_9_cap (all_nil))))))))))

end SubsetSum.FilterData
