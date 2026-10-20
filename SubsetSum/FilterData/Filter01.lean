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

def filter_1 : RawFilter := ⟨(103833 / 100000 : ℚ), [(6957 / 6250 : ℚ), (4803 / 10000 : ℚ), (-877 / 6250 : ℚ), (-3431 / 50000 : ℚ), (3583 / 50000 : ℚ), (-3251 / 100000 : ℚ), (-69 / 2000 : ℚ), (287 / 12500 : ℚ)], [(68881 / 50000 : ℚ), (-14859 / 20000 : ℚ), (3213 / 25000 : ℚ), (-223 / 10000 : ℚ), (1177 / 50000 : ℚ), (279 / 100000 : ℚ), (-251 / 6250 : ℚ), (-4383 / 100000 : ℚ)]⟩
theorem filter_1_valid : ValidFilter filter_1 := by
  decide +kernel

def certificate_1_0 : RawCertificate := ⟨1, 0, [0, 6, 7, 21], [(6232 / 625 : ℚ), (0 / 1 : ℚ), (153809 / 10000 : ℚ), (2109 / 5000 : ℚ), (24991 / 5000 : ℚ), (819 / 5000 : ℚ)]⟩
theorem certificate_1_0_valid : ValidCertificate certificate_1_0 := by
  decide +kernel
theorem certificate_1_0_cap : FirstCap certificate_1_0 := by
  decide +kernel

def certificate_1_1 : RawCertificate := ⟨1, 1, [0, 4, 6, 14], [(7843 / 5000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (952 / 625 : ℚ), (41491 / 5000 : ℚ), (663 / 1000 : ℚ)]⟩
theorem certificate_1_1_valid : ValidCertificate certificate_1_1 := by
  decide +kernel
theorem certificate_1_1_cap : FirstCap certificate_1_1 := by
  decide +kernel

def certificate_1_2 : RawCertificate := ⟨1, 2, [0, 4, 6, 14], [(7843 / 5000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (952 / 625 : ℚ), (41491 / 5000 : ℚ), (663 / 1000 : ℚ)]⟩
theorem certificate_1_2_valid : ValidCertificate certificate_1_2 := by
  decide +kernel
theorem certificate_1_2_cap : FirstCap certificate_1_2 := by
  decide +kernel

def certificate_1_3 : RawCertificate := ⟨1, 3, [0, 4, 6, 14], [(7843 / 5000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (952 / 625 : ℚ), (41491 / 5000 : ℚ), (663 / 1000 : ℚ)]⟩
theorem certificate_1_3_valid : ValidCertificate certificate_1_3 := by
  decide +kernel
theorem certificate_1_3_cap : FirstCap certificate_1_3 := by
  decide +kernel

def certificate_1_4 : RawCertificate := ⟨1, 4, [0, 4, 6, 14], [(7843 / 5000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (952 / 625 : ℚ), (41491 / 5000 : ℚ), (663 / 1000 : ℚ)]⟩
theorem certificate_1_4_valid : ValidCertificate certificate_1_4 := by
  decide +kernel
theorem certificate_1_4_cap : FirstCap certificate_1_4 := by
  decide +kernel

def certificate_1_5 : RawCertificate := ⟨1, 5, [0, 4, 6, 14], [(7843 / 5000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (952 / 625 : ℚ), (41491 / 5000 : ℚ), (663 / 1000 : ℚ)]⟩
theorem certificate_1_5_valid : ValidCertificate certificate_1_5 := by
  decide +kernel
theorem certificate_1_5_cap : FirstCap certificate_1_5 := by
  decide +kernel

def certificate_1_6 : RawCertificate := ⟨1, 6, [0, 4, 6, 14], [(7843 / 5000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (952 / 625 : ℚ), (41491 / 5000 : ℚ), (663 / 1000 : ℚ)]⟩
theorem certificate_1_6_valid : ValidCertificate certificate_1_6 := by
  decide +kernel
theorem certificate_1_6_cap : FirstCap certificate_1_6 := by
  decide +kernel

def certificate_1_7 : RawCertificate := ⟨1, 7, [0, 4, 6, 14], [(7843 / 5000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (952 / 625 : ℚ), (41491 / 5000 : ℚ), (663 / 1000 : ℚ)]⟩
theorem certificate_1_7_valid : ValidCertificate certificate_1_7 := by
  decide +kernel
theorem certificate_1_7_cap : FirstCap certificate_1_7 := by
  decide +kernel

def certificate_1_8 : RawCertificate := ⟨1, 8, [0, 4, 6, 14], [(7843 / 5000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (952 / 625 : ℚ), (41491 / 5000 : ℚ), (663 / 1000 : ℚ)]⟩
theorem certificate_1_8_valid : ValidCertificate certificate_1_8 := by
  decide +kernel
theorem certificate_1_8_cap : FirstCap certificate_1_8 := by
  decide +kernel

def certificate_1_9 : RawCertificate := ⟨1, 9, [0, 4, 6, 14], [(7843 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (952 / 625 : ℚ), (41491 / 5000 : ℚ), (663 / 1000 : ℚ)]⟩
theorem certificate_1_9_valid : ValidCertificate certificate_1_9 := by
  decide +kernel
theorem certificate_1_9_cap : FirstCap certificate_1_9 := by
  decide +kernel

def filter_1_certificates : List RawCertificate := [certificate_1_0, certificate_1_1, certificate_1_2, certificate_1_3, certificate_1_4, certificate_1_5, certificate_1_6, certificate_1_7, certificate_1_8, certificate_1_9]
theorem filter_1_certificates_count : filter_1_certificates.length = 10 := by rfl
theorem filter_1_certificates_valid : ∀ c ∈ filter_1_certificates, ValidCertificate c := by
  exact all_cons certificate_1_0_valid (all_cons certificate_1_1_valid (all_cons certificate_1_2_valid (all_cons certificate_1_3_valid (all_cons certificate_1_4_valid (all_cons certificate_1_5_valid (all_cons certificate_1_6_valid (all_cons certificate_1_7_valid (all_cons certificate_1_8_valid (all_cons certificate_1_9_valid (all_nil))))))))))
theorem filter_1_certificates_caps : ∀ c ∈ filter_1_certificates, FirstCap c := by
  exact all_cons certificate_1_0_cap (all_cons certificate_1_1_cap (all_cons certificate_1_2_cap (all_cons certificate_1_3_cap (all_cons certificate_1_4_cap (all_cons certificate_1_5_cap (all_cons certificate_1_6_cap (all_cons certificate_1_7_cap (all_cons certificate_1_8_cap (all_cons certificate_1_9_cap (all_nil))))))))))

end SubsetSum.FilterData
