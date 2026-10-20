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

def filter_28 : RawFilter := ⟨(51697 / 50000 : ℚ), [(21577 / 25000 : ℚ), (53287 / 100000 : ℚ), (21327 / 50000 : ℚ), (-21151 / 50000 : ℚ), (-12507 / 50000 : ℚ), (14947 / 50000 : ℚ), (-8177 / 100000 : ℚ), (7 / 10000 : ℚ)], [(1407 / 1250 : ℚ), (-73481 / 100000 : ℚ), (6541 / 12500 : ℚ), (12027 / 50000 : ℚ), (-10271 / 50000 : ℚ), (-7541 / 50000 : ℚ), (-2881 / 25000 : ℚ), (-59 / 25000 : ℚ)]⟩
theorem filter_28_valid : ValidFilter filter_28 := by
  decide +kernel

def certificate_28_0 : RawCertificate := ⟨28, 0, [32, 34, 37, 38, 39], [(423 / 50 : ℚ), (0 / 1 : ℚ), (9313 / 2500 : ℚ), (173 / 2500 : ℚ), (897 / 2500 : ℚ), (2761 / 2000 : ℚ), (12413 / 10000 : ℚ)]⟩
theorem certificate_28_0_valid : ValidCertificate certificate_28_0 := by
  decide +kernel
theorem certificate_28_0_cap : FirstCap certificate_28_0 := by
  decide +kernel

def certificate_28_1 : RawCertificate := ⟨28, 1, [24, 32, 38], [(3903 / 500 : ℚ), (1319 / 1000 : ℚ), (0 / 1 : ℚ), (9213 / 5000 : ℚ), (34987 / 10000 : ℚ), (9517 / 5000 : ℚ)]⟩
theorem certificate_28_1_valid : ValidCertificate certificate_28_1 := by
  decide +kernel
theorem certificate_28_1_cap : FirstCap certificate_28_1 := by
  decide +kernel

def certificate_28_2 : RawCertificate := ⟨28, 2, [5, 8, 15, 20, 23, 24, 30, 32, 42], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (195051 / 10000 : ℚ), (22287 / 10000 : ℚ), (52883 / 5000 : ℚ), (99507 / 5000 : ℚ), (40 / 1 : ℚ), (76747 / 2500 : ℚ), (40 / 1 : ℚ), (54397 / 2500 : ℚ)]⟩
theorem certificate_28_2_valid : ValidCertificate certificate_28_2 := by
  decide +kernel
theorem certificate_28_2_cap : FirstCap certificate_28_2 := by
  decide +kernel

def certificate_28_3 : RawCertificate := ⟨28, 3, [5, 8, 15, 20, 23, 24, 30, 32, 42], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (36919 / 2000 : ℚ), (26703 / 10000 : ℚ), (4843 / 625 : ℚ), (199469 / 10000 : ℚ), (40 / 1 : ℚ), (140069 / 5000 : ℚ), (40 / 1 : ℚ), (180201 / 10000 : ℚ)]⟩
theorem certificate_28_3_valid : ValidCertificate certificate_28_3 := by
  decide +kernel
theorem certificate_28_3_cap : FirstCap certificate_28_3 := by
  decide +kernel

def certificate_28_4 : RawCertificate := ⟨28, 4, [5, 8, 15, 20, 23, 24, 30, 32, 42], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (88583 / 5000 : ℚ), (29829 / 10000 : ℚ), (57341 / 10000 : ℚ), (199889 / 10000 : ℚ), (40 / 1 : ℚ), (130469 / 5000 : ℚ), (40 / 1 : ℚ), (153643 / 10000 : ℚ)]⟩
theorem certificate_28_4_valid : ValidCertificate certificate_28_4 := by
  decide +kernel
theorem certificate_28_4_cap : FirstCap certificate_28_4 := by
  decide +kernel

def certificate_28_5 : RawCertificate := ⟨28, 5, [5, 8, 15, 20, 23, 24, 30, 32, 42], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (34067 / 2000 : ℚ), (32693 / 10000 : ℚ), (38781 / 10000 : ℚ), (200347 / 10000 : ℚ), (40 / 1 : ℚ), (60799 / 2500 : ℚ), (40 / 1 : ℚ), (64617 / 5000 : ℚ)]⟩
theorem certificate_28_5_valid : ValidCertificate certificate_28_5 := by
  decide +kernel
theorem certificate_28_5_cap : FirstCap certificate_28_5 := by
  decide +kernel

def certificate_28_6 : RawCertificate := ⟨28, 6, [5, 8, 15, 20, 23, 24, 30, 32, 42], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (164501 / 10000 : ℚ), (35133 / 10000 : ℚ), (22899 / 10000 : ℚ), (25099 / 1250 : ℚ), (40 / 1 : ℚ), (113987 / 5000 : ℚ), (40 / 1 : ℚ), (10839 / 1000 : ℚ)]⟩
theorem certificate_28_6_valid : ValidCertificate certificate_28_6 := by
  decide +kernel
theorem certificate_28_6_cap : FirstCap certificate_28_6 := by
  decide +kernel

def certificate_28_7 : RawCertificate := ⟨28, 7, [5, 8, 15, 20, 23, 24, 30, 32, 42], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (159461 / 10000 : ℚ), (9309 / 2500 : ℚ), (4577 / 5000 : ℚ), (201217 / 10000 : ℚ), (40 / 1 : ℚ), (214769 / 10000 : ℚ), (40 / 1 : ℚ), (90389 / 10000 : ℚ)]⟩
theorem certificate_28_7_valid : ValidCertificate certificate_28_7 := by
  decide +kernel
theorem certificate_28_7_cap : FirstCap certificate_28_7 := by
  decide +kernel

def certificate_28_8 : RawCertificate := ⟨28, 8, [5, 8, 15, 23, 24, 30, 32, 42], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40 / 1 : ℚ), (7771 / 500 : ℚ), (39177 / 10000 : ℚ), (3991 / 200 : ℚ), (40 / 1 : ℚ), (207281 / 10000 : ℚ), (40 / 1 : ℚ), (76801 / 10000 : ℚ)]⟩
theorem certificate_28_8_valid : ValidCertificate certificate_28_8 := by
  decide +kernel
theorem certificate_28_8_cap : FirstCap certificate_28_8 := by
  decide +kernel

def certificate_28_9 : RawCertificate := ⟨28, 9, [5, 8, 15, 23, 24, 29, 30, 32, 42], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (9517 / 625 : ℚ), (36259 / 10000 : ℚ), (189957 / 10000 : ℚ), (40 / 1 : ℚ), (4291 / 5000 : ℚ), (108041 / 5000 : ℚ), (40 / 1 : ℚ), (29331 / 5000 : ℚ)]⟩
theorem certificate_28_9_valid : ValidCertificate certificate_28_9 := by
  decide +kernel
theorem certificate_28_9_cap : FirstCap certificate_28_9 := by
  decide +kernel

def filter_28_certificates : List RawCertificate := [certificate_28_0, certificate_28_1, certificate_28_2, certificate_28_3, certificate_28_4, certificate_28_5, certificate_28_6, certificate_28_7, certificate_28_8, certificate_28_9]
theorem filter_28_certificates_count : filter_28_certificates.length = 10 := by rfl
theorem filter_28_certificates_valid : ∀ c ∈ filter_28_certificates, ValidCertificate c := by
  exact all_cons certificate_28_0_valid (all_cons certificate_28_1_valid (all_cons certificate_28_2_valid (all_cons certificate_28_3_valid (all_cons certificate_28_4_valid (all_cons certificate_28_5_valid (all_cons certificate_28_6_valid (all_cons certificate_28_7_valid (all_cons certificate_28_8_valid (all_cons certificate_28_9_valid (all_nil))))))))))
theorem filter_28_certificates_caps : ∀ c ∈ filter_28_certificates, FirstCap c := by
  exact all_cons certificate_28_0_cap (all_cons certificate_28_1_cap (all_cons certificate_28_2_cap (all_cons certificate_28_3_cap (all_cons certificate_28_4_cap (all_cons certificate_28_5_cap (all_cons certificate_28_6_cap (all_cons certificate_28_7_cap (all_cons certificate_28_8_cap (all_cons certificate_28_9_cap (all_nil))))))))))

end SubsetSum.FilterData
