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

def filter_20 : RawFilter := ⟨(20709 / 20000 : ℚ), [(86281 / 100000 : ℚ), (22997 / 50000 : ℚ), (24439 / 50000 : ℚ), (-32787 / 100000 : ℚ), (-25329 / 100000 : ℚ), (29811 / 100000 : ℚ), (-2039 / 10000 : ℚ), (517 / 50000 : ℚ)], [(113221 / 100000 : ℚ), (-72677 / 100000 : ℚ), (1951 / 3125 : ℚ), (8067 / 50000 : ℚ), (-4027 / 20000 : ℚ), (-14383 / 100000 : ℚ), (-23787 / 100000 : ℚ), (1281 / 20000 : ℚ)]⟩
theorem filter_20_valid : ValidFilter filter_20 := by
  decide +kernel

def certificate_20_0 : RawCertificate := ⟨20, 0, [27, 28, 32, 37, 41], [(5227 / 625 : ℚ), (0 / 1 : ℚ), (7483 / 10000 : ℚ), (23483 / 5000 : ℚ), (1833 / 10000 : ℚ), (8611 / 2500 : ℚ), (6959 / 5000 : ℚ)]⟩
theorem certificate_20_0_valid : ValidCertificate certificate_20_0 := by
  decide +kernel
theorem certificate_20_0_cap : FirstCap certificate_20_0 := by
  decide +kernel

def certificate_20_1 : RawCertificate := ⟨20, 1, [24, 26, 28, 32, 37, 38], [(7917 / 1000 : ℚ), (4211 / 5000 : ℚ), (0 / 1 : ℚ), (5183 / 10000 : ℚ), (243 / 10000 : ℚ), (4673 / 1250 : ℚ), (867 / 500 : ℚ), (6067 / 2000 : ℚ), (96 / 125 : ℚ)]⟩
theorem certificate_20_1_valid : ValidCertificate certificate_20_1 := by
  decide +kernel
theorem certificate_20_1_cap : FirstCap certificate_20_1 := by
  decide +kernel

def certificate_20_2 : RawCertificate := ⟨20, 2, [3, 10, 21, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (1313 / 80 : ℚ), (1709 / 500 : ℚ), (64109 / 2000 : ℚ), (21887 / 5000 : ℚ)]⟩
theorem certificate_20_2_valid : ValidCertificate certificate_20_2 := by
  decide +kernel
theorem certificate_20_2_cap : FirstCap certificate_20_2 := by
  decide +kernel

def certificate_20_3 : RawCertificate := ⟨20, 3, [3, 10, 21, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (160301 / 10000 : ℚ), (4457 / 1250 : ℚ), (152479 / 5000 : ℚ), (23379 / 5000 : ℚ)]⟩
theorem certificate_20_3_valid : ValidCertificate certificate_20_3 := by
  decide +kernel
theorem certificate_20_3_cap : FirstCap certificate_20_3 := by
  decide +kernel

def certificate_20_4 : RawCertificate := ⟨20, 4, [3, 10, 21, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (15757 / 1000 : ℚ), (18337 / 5000 : ℚ), (14697 / 500 : ℚ), (48867 / 10000 : ℚ)]⟩
theorem certificate_20_4_valid : ValidCertificate certificate_20_4 := by
  decide +kernel
theorem certificate_20_4_cap : FirstCap certificate_20_4 := by
  decide +kernel

def certificate_20_5 : RawCertificate := ⟨20, 5, [3, 10, 21, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (3101 / 200 : ℚ), (37589 / 10000 : ℚ), (17741 / 625 : ℚ), (25399 / 5000 : ℚ)]⟩
theorem certificate_20_5_valid : ValidCertificate certificate_20_5 := by
  decide +kernel
theorem certificate_20_5_cap : FirstCap certificate_20_5 := by
  decide +kernel

def certificate_20_6 : RawCertificate := ⟨20, 6, [3, 10, 21, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (38223 / 2500 : ℚ), (19177 / 5000 : ℚ), (275277 / 10000 : ℚ), (52439 / 10000 : ℚ)]⟩
theorem certificate_20_6_valid : ValidCertificate certificate_20_6 := by
  decide +kernel
theorem certificate_20_6_cap : FirstCap certificate_20_6 := by
  decide +kernel

def certificate_20_7 : RawCertificate := ⟨20, 7, [3, 10, 21, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (75511 / 5000 : ℚ), (39003 / 10000 : ℚ), (66973 / 2500 : ℚ), (53851 / 10000 : ℚ)]⟩
theorem certificate_20_7_valid : ValidCertificate certificate_20_7 := by
  decide +kernel
theorem certificate_20_7_cap : FirstCap certificate_20_7 := by
  decide +kernel

def certificate_20_8 : RawCertificate := ⟨20, 8, [3, 10, 21, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (74693 / 5000 : ℚ), (39561 / 10000 : ℚ), (130733 / 5000 : ℚ), (1377 / 250 : ℚ)]⟩
theorem certificate_20_8_valid : ValidCertificate certificate_20_8 := by
  decide +kernel
theorem certificate_20_8_cap : FirstCap certificate_20_8 := by
  decide +kernel

def certificate_20_9 : RawCertificate := ⟨20, 9, [3, 10, 21, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (29623 / 2000 : ℚ), (9997 / 2500 : ℚ), (256493 / 10000 : ℚ), (5603 / 1000 : ℚ)]⟩
theorem certificate_20_9_valid : ValidCertificate certificate_20_9 := by
  decide +kernel
theorem certificate_20_9_cap : FirstCap certificate_20_9 := by
  decide +kernel

def filter_20_certificates : List RawCertificate := [certificate_20_0, certificate_20_1, certificate_20_2, certificate_20_3, certificate_20_4, certificate_20_5, certificate_20_6, certificate_20_7, certificate_20_8, certificate_20_9]
theorem filter_20_certificates_count : filter_20_certificates.length = 10 := by rfl
theorem filter_20_certificates_valid : ∀ c ∈ filter_20_certificates, ValidCertificate c := by
  exact all_cons certificate_20_0_valid (all_cons certificate_20_1_valid (all_cons certificate_20_2_valid (all_cons certificate_20_3_valid (all_cons certificate_20_4_valid (all_cons certificate_20_5_valid (all_cons certificate_20_6_valid (all_cons certificate_20_7_valid (all_cons certificate_20_8_valid (all_cons certificate_20_9_valid (all_nil))))))))))
theorem filter_20_certificates_caps : ∀ c ∈ filter_20_certificates, FirstCap c := by
  exact all_cons certificate_20_0_cap (all_cons certificate_20_1_cap (all_cons certificate_20_2_cap (all_cons certificate_20_3_cap (all_cons certificate_20_4_cap (all_cons certificate_20_5_cap (all_cons certificate_20_6_cap (all_cons certificate_20_7_cap (all_cons certificate_20_8_cap (all_cons certificate_20_9_cap (all_nil))))))))))

end SubsetSum.FilterData
