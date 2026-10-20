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

def filter_22 : RawFilter := ⟨(103499 / 100000 : ℚ), [(85001 / 100000 : ℚ), (27283 / 50000 : ℚ), (10121 / 25000 : ℚ), (-39481 / 100000 : ℚ), (-26303 / 100000 : ℚ), (606 / 3125 : ℚ), (26159 / 100000 : ℚ), (-13131 / 50000 : ℚ)], [(113131 / 100000 : ℚ), (-3697 / 5000 : ℚ), (49309 / 100000 : ℚ), (17757 / 100000 : ℚ), (-643 / 3125 : ℚ), (-2341 / 20000 : ℚ), (7607 / 50000 : ℚ), (8897 / 50000 : ℚ)]⟩
theorem filter_22_valid : ValidFilter filter_22 := by
  decide +kernel

def certificate_22_0 : RawCertificate := ⟨22, 0, [28, 32, 34, 37], [(8457 / 1000 : ℚ), (0 / 1 : ℚ), (323 / 500 : ℚ), (10017 / 2000 : ℚ), (31523 / 10000 : ℚ), (61 / 50 : ℚ)]⟩
theorem certificate_22_0_valid : ValidCertificate certificate_22_0 := by
  decide +kernel
theorem certificate_22_0_cap : FirstCap certificate_22_0 := by
  decide +kernel

def certificate_22_1 : RawCertificate := ⟨22, 1, [24, 28, 32, 34], [(76971 / 10000 : ℚ), (3731 / 2500 : ℚ), (0 / 1 : ℚ), (3521 / 1250 : ℚ), (2059 / 2500 : ℚ), (38957 / 10000 : ℚ), (17391 / 10000 : ℚ)]⟩
theorem certificate_22_1_valid : ValidCertificate certificate_22_1 := by
  decide +kernel
theorem certificate_22_1_cap : FirstCap certificate_22_1 := by
  decide +kernel

def certificate_22_2 : RawCertificate := ⟨22, 2, [3, 4, 6, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (31673 / 2500 : ℚ), (20591 / 5000 : ℚ), (957 / 10000 : ℚ), (95867 / 5000 : ℚ)]⟩
theorem certificate_22_2_valid : ValidCertificate certificate_22_2 := by
  decide +kernel
theorem certificate_22_2_cap : FirstCap certificate_22_2 := by
  decide +kernel

def certificate_22_3 : RawCertificate := ⟨22, 3, [3, 4, 6, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (31297 / 2500 : ℚ), (8219 / 2000 : ℚ), (6053 / 10000 : ℚ), (91183 / 5000 : ℚ)]⟩
theorem certificate_22_3_valid : ValidCertificate certificate_22_3 := by
  decide +kernel
theorem certificate_22_3_cap : FirstCap certificate_22_3 := by
  decide +kernel

def certificate_22_4 : RawCertificate := ⟨22, 4, [3, 4, 6, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (124097 / 10000 : ℚ), (40999 / 10000 : ℚ), (2387 / 2500 : ℚ), (175833 / 10000 : ℚ)]⟩
theorem certificate_22_4_valid : ValidCertificate certificate_22_4 := by
  decide +kernel
theorem certificate_22_4_cap : FirstCap certificate_22_4 := by
  decide +kernel

def certificate_22_5 : RawCertificate := ⟨22, 5, [3, 4, 6, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (61539 / 5000 : ℚ), (40887 / 10000 : ℚ), (792 / 625 : ℚ), (169919 / 10000 : ℚ)]⟩
theorem certificate_22_5_valid : ValidCertificate certificate_22_5 := by
  decide +kernel
theorem certificate_22_5_cap : FirstCap certificate_22_5 := by
  decide +kernel

def certificate_22_6 : RawCertificate := ⟨22, 6, [3, 4, 6, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (30549 / 2500 : ℚ), (1631 / 400 : ℚ), (15273 / 10000 : ℚ), (82467 / 5000 : ℚ)]⟩
theorem certificate_22_6_valid : ValidCertificate certificate_22_6 := by
  decide +kernel
theorem certificate_22_6_cap : FirstCap certificate_22_6 := by
  decide +kernel

def certificate_22_7 : RawCertificate := ⟨22, 7, [3, 4, 6, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (60713 / 5000 : ℚ), (20333 / 5000 : ℚ), (1092 / 625 : ℚ), (160677 / 10000 : ℚ)]⟩
theorem certificate_22_7_valid : ValidCertificate certificate_22_7 := by
  decide +kernel
theorem certificate_22_7_cap : FirstCap certificate_22_7 := by
  decide +kernel

def certificate_22_8 : RawCertificate := ⟨22, 8, [3, 4, 6, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (120747 / 10000 : ℚ), (20281 / 5000 : ℚ), (3871 / 2000 : ℚ), (156999 / 10000 : ℚ)]⟩
theorem certificate_22_8_valid : ValidCertificate certificate_22_8 := by
  decide +kernel
theorem certificate_22_8_cap : FirstCap certificate_22_8 := by
  decide +kernel

def certificate_22_9 : RawCertificate := ⟨22, 9, [3, 4, 6, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (120217 / 10000 : ℚ), (1619 / 400 : ℚ), (10397 / 5000 : ℚ), (19271 / 1250 : ℚ)]⟩
theorem certificate_22_9_valid : ValidCertificate certificate_22_9 := by
  decide +kernel
theorem certificate_22_9_cap : FirstCap certificate_22_9 := by
  decide +kernel

def filter_22_certificates : List RawCertificate := [certificate_22_0, certificate_22_1, certificate_22_2, certificate_22_3, certificate_22_4, certificate_22_5, certificate_22_6, certificate_22_7, certificate_22_8, certificate_22_9]
theorem filter_22_certificates_count : filter_22_certificates.length = 10 := by rfl
theorem filter_22_certificates_valid : ∀ c ∈ filter_22_certificates, ValidCertificate c := by
  exact all_cons certificate_22_0_valid (all_cons certificate_22_1_valid (all_cons certificate_22_2_valid (all_cons certificate_22_3_valid (all_cons certificate_22_4_valid (all_cons certificate_22_5_valid (all_cons certificate_22_6_valid (all_cons certificate_22_7_valid (all_cons certificate_22_8_valid (all_cons certificate_22_9_valid (all_nil))))))))))
theorem filter_22_certificates_caps : ∀ c ∈ filter_22_certificates, FirstCap c := by
  exact all_cons certificate_22_0_cap (all_cons certificate_22_1_cap (all_cons certificate_22_2_cap (all_cons certificate_22_3_cap (all_cons certificate_22_4_cap (all_cons certificate_22_5_cap (all_cons certificate_22_6_cap (all_cons certificate_22_7_cap (all_cons certificate_22_8_cap (all_cons certificate_22_9_cap (all_nil))))))))))

end SubsetSum.FilterData
