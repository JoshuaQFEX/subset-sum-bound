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

def filter_42 : RawFilter := ⟨(10341 / 10000 : ℚ), [(85861 / 100000 : ℚ), (53793 / 100000 : ℚ), (1581 / 4000 : ℚ), (-43541 / 100000 : ℚ), (-12069 / 50000 : ℚ), (34497 / 100000 : ℚ), (-1669 / 25000 : ℚ), (99 / 100000 : ℚ)], [(28139 / 25000 : ℚ), (-72213 / 100000 : ℚ), (12309 / 25000 : ℚ), (3307 / 12500 : ℚ), (-19709 / 100000 : ℚ), (-19857 / 100000 : ℚ), (-8363 / 100000 : ℚ), (-1199 / 50000 : ℚ)]⟩
theorem filter_42_valid : ValidFilter filter_42 := by
  decide +kernel

def certificate_42_0 : RawCertificate := ⟨42, 0, [28, 31, 32, 39], [(84489 / 10000 : ℚ), (0 / 1 : ℚ), (29557 / 10000 : ℚ), (2921 / 5000 : ℚ), (18259 / 5000 : ℚ), (7239 / 2500 : ℚ)]⟩
theorem certificate_42_0_valid : ValidCertificate certificate_42_0 := by
  decide +kernel
theorem certificate_42_0_cap : FirstCap certificate_42_0 := by
  decide +kernel

def certificate_42_1 : RawCertificate := ⟨42, 1, [28, 32, 37], [(15523 / 2000 : ℚ), (6869 / 5000 : ℚ), (0 / 1 : ℚ), (52569 / 10000 : ℚ), (25839 / 5000 : ℚ), (11169 / 10000 : ℚ)]⟩
theorem certificate_42_1_valid : ValidCertificate certificate_42_1 := by
  decide +kernel
theorem certificate_42_1_cap : FirstCap certificate_42_1 := by
  decide +kernel

def certificate_42_2 : RawCertificate := ⟨42, 2, [3, 4, 5, 8, 25, 29], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (13737 / 5000 : ℚ), (7206 / 625 : ℚ), (40 / 1 : ℚ), (3887 / 1250 : ℚ), (50357 / 2000 : ℚ), (102123 / 5000 : ℚ)]⟩
theorem certificate_42_2_valid : ValidCertificate certificate_42_2 := by
  decide +kernel
theorem certificate_42_2_cap : FirstCap certificate_42_2 := by
  decide +kernel

def certificate_42_3 : RawCertificate := ⟨42, 3, [3, 4, 5, 8, 25, 29], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (2969 / 1250 : ℚ), (22831 / 2000 : ℚ), (40 / 1 : ℚ), (19087 / 5000 : ℚ), (48179 / 2000 : ℚ), (101141 / 5000 : ℚ)]⟩
theorem certificate_42_3_valid : ValidCertificate certificate_42_3 := by
  decide +kernel
theorem certificate_42_3_cap : FirstCap certificate_42_3 := by
  decide +kernel

def certificate_42_4 : RawCertificate := ⟨42, 4, [3, 4, 5, 8, 25, 29], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (21107 / 10000 : ℚ), (56669 / 5000 : ℚ), (40 / 1 : ℚ), (43177 / 10000 : ℚ), (233171 / 10000 : ℚ), (200931 / 10000 : ℚ)]⟩
theorem certificate_42_4_valid : ValidCertificate certificate_42_4 := by
  decide +kernel
theorem certificate_42_4_cap : FirstCap certificate_42_4 := by
  decide +kernel

def certificate_42_5 : RawCertificate := ⟨42, 5, [3, 4, 5, 8, 25, 29], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (4669 / 2500 : ℚ), (112583 / 10000 : ℚ), (40 / 1 : ℚ), (47757 / 10000 : ℚ), (226083 / 10000 : ℚ), (199723 / 10000 : ℚ)]⟩
theorem certificate_42_5_valid : ValidCertificate certificate_42_5 := by
  decide +kernel
theorem certificate_42_5_cap : FirstCap certificate_42_5 := by
  decide +kernel

def certificate_42_6 : RawCertificate := ⟨42, 6, [3, 4, 5, 8, 25, 29], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (83 / 50 : ℚ), (22387 / 2000 : ℚ), (40 / 1 : ℚ), (51653 / 10000 : ℚ), (220037 / 10000 : ℚ), (49679 / 2500 : ℚ)]⟩
theorem certificate_42_6_valid : ValidCertificate certificate_42_6 := by
  decide +kernel
theorem certificate_42_6_cap : FirstCap certificate_42_6 := by
  decide +kernel

def certificate_42_7 : RawCertificate := ⟨42, 7, [3, 4, 5, 8, 25, 29], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (7403 / 5000 : ℚ), (111373 / 10000 : ℚ), (40 / 1 : ℚ), (55009 / 10000 : ℚ), (10741 / 500 : ℚ), (24733 / 1250 : ℚ)]⟩
theorem certificate_42_7_valid : ValidCertificate certificate_42_7 := by
  decide +kernel
theorem certificate_42_7_cap : FirstCap certificate_42_7 := by
  decide +kernel

def certificate_42_8 : RawCertificate := ⟨42, 8, [3, 4, 5, 8, 25, 29], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (331 / 250 : ℚ), (1386 / 125 : ℚ), (40 / 1 : ℚ), (57929 / 10000 : ℚ), (210271 / 10000 : ℚ), (39427 / 2000 : ℚ)]⟩
theorem certificate_42_8_valid : ValidCertificate certificate_42_8 := by
  decide +kernel
theorem certificate_42_8_cap : FirstCap certificate_42_8 := by
  decide +kernel

def certificate_42_9 : RawCertificate := ⟨42, 9, [3, 4, 5, 8, 25, 29], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (481 / 400 : ℚ), (6906 / 625 : ℚ), (40 / 1 : ℚ), (60191 / 10000 : ℚ), (41349 / 2000 : ℚ), (98289 / 5000 : ℚ)]⟩
theorem certificate_42_9_valid : ValidCertificate certificate_42_9 := by
  decide +kernel
theorem certificate_42_9_cap : FirstCap certificate_42_9 := by
  decide +kernel

def filter_42_certificates : List RawCertificate := [certificate_42_0, certificate_42_1, certificate_42_2, certificate_42_3, certificate_42_4, certificate_42_5, certificate_42_6, certificate_42_7, certificate_42_8, certificate_42_9]
theorem filter_42_certificates_count : filter_42_certificates.length = 10 := by rfl
theorem filter_42_certificates_valid : ∀ c ∈ filter_42_certificates, ValidCertificate c := by
  exact all_cons certificate_42_0_valid (all_cons certificate_42_1_valid (all_cons certificate_42_2_valid (all_cons certificate_42_3_valid (all_cons certificate_42_4_valid (all_cons certificate_42_5_valid (all_cons certificate_42_6_valid (all_cons certificate_42_7_valid (all_cons certificate_42_8_valid (all_cons certificate_42_9_valid (all_nil))))))))))
theorem filter_42_certificates_caps : ∀ c ∈ filter_42_certificates, FirstCap c := by
  exact all_cons certificate_42_0_cap (all_cons certificate_42_1_cap (all_cons certificate_42_2_cap (all_cons certificate_42_3_cap (all_cons certificate_42_4_cap (all_cons certificate_42_5_cap (all_cons certificate_42_6_cap (all_cons certificate_42_7_cap (all_cons certificate_42_8_cap (all_cons certificate_42_9_cap (all_nil))))))))))

end SubsetSum.FilterData
