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

def filter_2 : RawFilter := ⟨(52913 / 50000 : ℚ), [(120389 / 100000 : ℚ), (17481 / 50000 : ℚ), (-7929 / 50000 : ℚ), (-299 / 12500 : ℚ), (1473 / 50000 : ℚ), (-121 / 20000 : ℚ), (-33 / 6250 : ℚ), (17 / 5000 : ℚ)], [(141719 / 100000 : ℚ), (-12389 / 20000 : ℚ), (4713 / 100000 : ℚ), (-707 / 100000 : ℚ), (439 / 100000 : ℚ), (127 / 100000 : ℚ), (-39 / 4000 : ℚ), (-31 / 25000 : ℚ)]⟩
theorem filter_2_valid : ValidFilter filter_2 := by
  decide +kernel

def certificate_2_0 : RawCertificate := ⟨2, 0, [0, 1, 7, 21], [(102703 / 10000 : ℚ), (0 / 1 : ℚ), (59733 / 10000 : ℚ), (7739 / 2000 : ℚ), (34829 / 5000 : ℚ), (3383 / 2000 : ℚ)]⟩
theorem certificate_2_0_valid : ValidCertificate certificate_2_0 := by
  decide +kernel
theorem certificate_2_0_cap : FirstCap certificate_2_0 := by
  decide +kernel

def certificate_2_1 : RawCertificate := ⟨2, 1, [0, 1, 7, 21], [(14183 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (234401 / 10000 : ℚ), (299709 / 10000 : ℚ), (17113 / 2500 : ℚ), (163 / 400 : ℚ)]⟩
theorem certificate_2_1_valid : ValidCertificate certificate_2_1 := by
  decide +kernel
theorem certificate_2_1_cap : FirstCap certificate_2_1 := by
  decide +kernel

def certificate_2_2 : RawCertificate := ⟨2, 2, [0, 1, 7, 21], [(14183 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (234401 / 10000 : ℚ), (299709 / 10000 : ℚ), (17113 / 2500 : ℚ), (163 / 400 : ℚ)]⟩
theorem certificate_2_2_valid : ValidCertificate certificate_2_2 := by
  decide +kernel
theorem certificate_2_2_cap : FirstCap certificate_2_2 := by
  decide +kernel

def certificate_2_3 : RawCertificate := ⟨2, 3, [0, 1, 7, 21], [(14183 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (234401 / 10000 : ℚ), (299709 / 10000 : ℚ), (17113 / 2500 : ℚ), (163 / 400 : ℚ)]⟩
theorem certificate_2_3_valid : ValidCertificate certificate_2_3 := by
  decide +kernel
theorem certificate_2_3_cap : FirstCap certificate_2_3 := by
  decide +kernel

def certificate_2_4 : RawCertificate := ⟨2, 4, [0, 1, 7, 21], [(14183 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (234401 / 10000 : ℚ), (299709 / 10000 : ℚ), (17113 / 2500 : ℚ), (163 / 400 : ℚ)]⟩
theorem certificate_2_4_valid : ValidCertificate certificate_2_4 := by
  decide +kernel
theorem certificate_2_4_cap : FirstCap certificate_2_4 := by
  decide +kernel

def certificate_2_5 : RawCertificate := ⟨2, 5, [0, 1, 7, 21], [(14183 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (234401 / 10000 : ℚ), (299709 / 10000 : ℚ), (17113 / 2500 : ℚ), (163 / 400 : ℚ)]⟩
theorem certificate_2_5_valid : ValidCertificate certificate_2_5 := by
  decide +kernel
theorem certificate_2_5_cap : FirstCap certificate_2_5 := by
  decide +kernel

def certificate_2_6 : RawCertificate := ⟨2, 6, [0, 1, 7, 21], [(14183 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (234401 / 10000 : ℚ), (299709 / 10000 : ℚ), (17113 / 2500 : ℚ), (163 / 400 : ℚ)]⟩
theorem certificate_2_6_valid : ValidCertificate certificate_2_6 := by
  decide +kernel
theorem certificate_2_6_cap : FirstCap certificate_2_6 := by
  decide +kernel

def certificate_2_7 : RawCertificate := ⟨2, 7, [0, 1, 7, 21], [(14183 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (234401 / 10000 : ℚ), (299709 / 10000 : ℚ), (17113 / 2500 : ℚ), (163 / 400 : ℚ)]⟩
theorem certificate_2_7_valid : ValidCertificate certificate_2_7 := by
  decide +kernel
theorem certificate_2_7_cap : FirstCap certificate_2_7 := by
  decide +kernel

def certificate_2_8 : RawCertificate := ⟨2, 8, [0, 1, 7, 21], [(14183 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (234401 / 10000 : ℚ), (299709 / 10000 : ℚ), (17113 / 2500 : ℚ), (163 / 400 : ℚ)]⟩
theorem certificate_2_8_valid : ValidCertificate certificate_2_8 := by
  decide +kernel
theorem certificate_2_8_cap : FirstCap certificate_2_8 := by
  decide +kernel

def certificate_2_9 : RawCertificate := ⟨2, 9, [0, 1, 7, 21], [(14183 / 10000 : ℚ), (40 / 1 : ℚ), (234401 / 10000 : ℚ), (299709 / 10000 : ℚ), (17113 / 2500 : ℚ), (163 / 400 : ℚ)]⟩
theorem certificate_2_9_valid : ValidCertificate certificate_2_9 := by
  decide +kernel
theorem certificate_2_9_cap : FirstCap certificate_2_9 := by
  decide +kernel

def filter_2_certificates : List RawCertificate := [certificate_2_0, certificate_2_1, certificate_2_2, certificate_2_3, certificate_2_4, certificate_2_5, certificate_2_6, certificate_2_7, certificate_2_8, certificate_2_9]
theorem filter_2_certificates_count : filter_2_certificates.length = 10 := by rfl
theorem filter_2_certificates_valid : ∀ c ∈ filter_2_certificates, ValidCertificate c := by
  exact all_cons certificate_2_0_valid (all_cons certificate_2_1_valid (all_cons certificate_2_2_valid (all_cons certificate_2_3_valid (all_cons certificate_2_4_valid (all_cons certificate_2_5_valid (all_cons certificate_2_6_valid (all_cons certificate_2_7_valid (all_cons certificate_2_8_valid (all_cons certificate_2_9_valid (all_nil))))))))))
theorem filter_2_certificates_caps : ∀ c ∈ filter_2_certificates, FirstCap c := by
  exact all_cons certificate_2_0_cap (all_cons certificate_2_1_cap (all_cons certificate_2_2_cap (all_cons certificate_2_3_cap (all_cons certificate_2_4_cap (all_cons certificate_2_5_cap (all_cons certificate_2_6_cap (all_cons certificate_2_7_cap (all_cons certificate_2_8_cap (all_cons certificate_2_9_cap (all_nil))))))))))

end SubsetSum.FilterData
