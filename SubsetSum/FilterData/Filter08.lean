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

def filter_8 : RawFilter := ⟨(103767 / 100000 : ℚ), [(15619 / 20000 : ℚ), (64691 / 100000 : ℚ), (41453 / 100000 : ℚ), (-10423 / 25000 : ℚ), (-12923 / 50000 : ℚ), (3757 / 50000 : ℚ), (203 / 6250 : ℚ), (2439 / 20000 : ℚ)], [(7009 / 6250 : ℚ), (-82371 / 100000 : ℚ), (2961 / 6250 : ℚ), (28329 / 100000 : ℚ), (-11861 / 50000 : ℚ), (629 / 25000 : ℚ), (-5553 / 100000 : ℚ), (-363 / 4000 : ℚ)]⟩
theorem filter_8_valid : ValidFilter filter_8 := by
  decide +kernel

def certificate_8_0 : RawCertificate := ⟨8, 0, [22, 24, 26, 30, 32], [(11077 / 1250 : ℚ), (1223 / 1000 : ℚ), (12823 / 10000 : ℚ), (27043 / 10000 : ℚ), (12667 / 5000 : ℚ), (8949 / 5000 : ℚ), (13527 / 5000 : ℚ)]⟩
theorem certificate_8_0_valid : ValidCertificate certificate_8_0 := by
  decide +kernel
theorem certificate_8_0_cap : FirstCap certificate_8_0 := by
  decide +kernel

def certificate_8_1 : RawCertificate := ⟨8, 1, [22, 24, 26, 30, 32], [(41123 / 5000 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (2761 / 10000 : ℚ), (21429 / 5000 : ℚ), (24287 / 10000 : ℚ), (4863 / 5000 : ℚ), (649 / 250 : ℚ)]⟩
theorem certificate_8_1_valid : ValidCertificate certificate_8_1 := by
  decide +kernel
theorem certificate_8_1_cap : FirstCap certificate_8_1 := by
  decide +kernel

def certificate_8_2 : RawCertificate := ⟨8, 2, [3, 4, 6], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (72967 / 5000 : ℚ), (149 / 16 : ℚ), (25861 / 2500 : ℚ)]⟩
theorem certificate_8_2_valid : ValidCertificate certificate_8_2 := by
  decide +kernel
theorem certificate_8_2_cap : FirstCap certificate_8_2 := by
  decide +kernel

def certificate_8_3 : RawCertificate := ⟨8, 3, [3, 4, 6], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (142681 / 10000 : ℚ), (3601 / 400 : ℚ), (24637 / 2500 : ℚ)]⟩
theorem certificate_8_3_valid : ValidCertificate certificate_8_3 := by
  decide +kernel
theorem certificate_8_3_cap : FirstCap certificate_8_3 := by
  decide +kernel

def certificate_8_4 : RawCertificate := ⟨8, 4, [3, 4, 6], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (14037 / 1000 : ℚ), (21957 / 2500 : ℚ), (47549 / 5000 : ℚ)]⟩
theorem certificate_8_4_valid : ValidCertificate certificate_8_4 := by
  decide +kernel
theorem certificate_8_4_cap : FirstCap certificate_8_4 := by
  decide +kernel

def certificate_8_5 : RawCertificate := ⟨8, 5, [3, 4, 6], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (69123 / 5000 : ℚ), (85813 / 10000 : ℚ), (22987 / 2500 : ℚ)]⟩
theorem certificate_8_5_valid : ValidCertificate certificate_8_5 := by
  decide +kernel
theorem certificate_8_5_cap : FirstCap certificate_8_5 := by
  decide +kernel

def certificate_8_6 : RawCertificate := ⟨8, 6, [3, 4, 6], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (68217 / 5000 : ℚ), (84097 / 10000 : ℚ), (44637 / 5000 : ℚ)]⟩
theorem certificate_8_6_valid : ValidCertificate certificate_8_6 := by
  decide +kernel
theorem certificate_8_6_cap : FirstCap certificate_8_6 := by
  decide +kernel

def certificate_8_7 : RawCertificate := ⟨8, 7, [3, 4, 6], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (33717 / 2500 : ℚ), (10327 / 1250 : ℚ), (86977 / 10000 : ℚ)]⟩
theorem certificate_8_7_valid : ValidCertificate certificate_8_7 := by
  decide +kernel
theorem certificate_8_7_cap : FirstCap certificate_8_7 := by
  decide +kernel

def certificate_8_8 : RawCertificate := ⟨8, 8, [3, 4, 6], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (133503 / 10000 : ℚ), (81327 / 10000 : ℚ), (84981 / 10000 : ℚ)]⟩
theorem certificate_8_8_valid : ValidCertificate certificate_8_8 := by
  decide +kernel
theorem certificate_8_8_cap : FirstCap certificate_8_8 := by
  decide +kernel

def certificate_8_9 : RawCertificate := ⟨8, 9, [3, 4, 6], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (132443 / 10000 : ℚ), (80327 / 10000 : ℚ), (83439 / 10000 : ℚ)]⟩
theorem certificate_8_9_valid : ValidCertificate certificate_8_9 := by
  decide +kernel
theorem certificate_8_9_cap : FirstCap certificate_8_9 := by
  decide +kernel

def filter_8_certificates : List RawCertificate := [certificate_8_0, certificate_8_1, certificate_8_2, certificate_8_3, certificate_8_4, certificate_8_5, certificate_8_6, certificate_8_7, certificate_8_8, certificate_8_9]
theorem filter_8_certificates_count : filter_8_certificates.length = 10 := by rfl
theorem filter_8_certificates_valid : ∀ c ∈ filter_8_certificates, ValidCertificate c := by
  exact all_cons certificate_8_0_valid (all_cons certificate_8_1_valid (all_cons certificate_8_2_valid (all_cons certificate_8_3_valid (all_cons certificate_8_4_valid (all_cons certificate_8_5_valid (all_cons certificate_8_6_valid (all_cons certificate_8_7_valid (all_cons certificate_8_8_valid (all_cons certificate_8_9_valid (all_nil))))))))))
theorem filter_8_certificates_caps : ∀ c ∈ filter_8_certificates, FirstCap c := by
  exact all_cons certificate_8_0_cap (all_cons certificate_8_1_cap (all_cons certificate_8_2_cap (all_cons certificate_8_3_cap (all_cons certificate_8_4_cap (all_cons certificate_8_5_cap (all_cons certificate_8_6_cap (all_cons certificate_8_7_cap (all_cons certificate_8_8_cap (all_cons certificate_8_9_cap (all_nil))))))))))

end SubsetSum.FilterData
