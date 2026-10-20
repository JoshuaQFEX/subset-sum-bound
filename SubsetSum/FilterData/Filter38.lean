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

def filter_38 : RawFilter := ⟨(51737 / 50000 : ℚ), [(86209 / 100000 : ℚ), (25577 / 50000 : ℚ), (10903 / 25000 : ℚ), (-8827 / 20000 : ℚ), (-1743 / 6250 : ℚ), (5543 / 25000 : ℚ), (23067 / 100000 : ℚ), (-9689 / 50000 : ℚ)], [(111689 / 100000 : ℚ), (-34389 / 50000 : ℚ), (47777 / 100000 : ℚ), (24619 / 100000 : ℚ), (-24013 / 100000 : ℚ), (-12521 / 100000 : ℚ), (1649 / 12500 : ℚ), (11959 / 100000 : ℚ)]⟩
theorem filter_38_valid : ValidFilter filter_38 := by
  decide +kernel

def certificate_38_0 : RawCertificate := ⟨38, 0, [28, 32, 34, 37, 39], [(423 / 50 : ℚ), (0 / 1 : ℚ), (337 / 200 : ℚ), (9313 / 2500 : ℚ), (173 / 2500 : ℚ), (897 / 2500 : ℚ), (12413 / 10000 : ℚ)]⟩
theorem certificate_38_0_valid : ValidCertificate certificate_38_0 := by
  decide +kernel
theorem certificate_38_0_cap : FirstCap certificate_38_0 := by
  decide +kernel

def certificate_38_1 : RawCertificate := ⟨38, 1, [24, 28, 32, 37], [(40067 / 5000 : ℚ), (1599 / 2500 : ℚ), (0 / 1 : ℚ), (3063 / 10000 : ℚ), (931 / 400 : ℚ), (10653 / 2500 : ℚ), (8863 / 5000 : ℚ)]⟩
theorem certificate_38_1_valid : ValidCertificate certificate_38_1 := by
  decide +kernel
theorem certificate_38_1_cap : FirstCap certificate_38_1 := by
  decide +kernel

def certificate_38_2 : RawCertificate := ⟨38, 2, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (25981 / 2000 : ℚ), (8951 / 625 : ℚ), (47199 / 2500 : ℚ), (114619 / 5000 : ℚ), (381451 / 10000 : ℚ), (40 / 1 : ℚ), (10397 / 2500 : ℚ), (6073 / 250 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_38_2_valid : ValidCertificate certificate_38_2 := by
  decide +kernel
theorem certificate_38_2_cap : FirstCap certificate_38_2 := by
  decide +kernel

def certificate_38_3 : RawCertificate := ⟨38, 3, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (25903 / 2000 : ℚ), (130823 / 10000 : ℚ), (174601 / 10000 : ℚ), (56033 / 2500 : ℚ), (180201 / 5000 : ℚ), (40 / 1 : ℚ), (3387 / 625 : ℚ), (185827 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_38_3_valid : ValidCertificate certificate_38_3 := by
  decide +kernel
theorem certificate_38_3_cap : FirstCap certificate_38_3 := by
  decide +kernel

def certificate_38_4 : RawCertificate := ⟨38, 4, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (25843 / 2000 : ℚ), (61031 / 5000 : ℚ), (164581 / 10000 : ℚ), (110231 / 5000 : ℚ), (34559 / 1000 : ℚ), (40 / 1 : ℚ), (3153 / 500 : ℚ), (36377 / 2500 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_38_4_valid : ValidCertificate certificate_38_4 := by
  decide +kernel
theorem certificate_38_4_cap : FirstCap certificate_38_4 := by
  decide +kernel

def certificate_38_5 : RawCertificate := ⟨38, 5, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (128923 / 10000 : ℚ), (114041 / 10000 : ℚ), (19427 / 1250 : ℚ), (108529 / 5000 : ℚ), (4151 / 125 : ℚ), (40 / 1 : ℚ), (1423 / 200 : ℚ), (108627 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_38_5_valid : ValidCertificate certificate_38_5 := by
  decide +kernel
theorem certificate_38_5_cap : FirstCap certificate_38_5 := by
  decide +kernel

def certificate_38_6 : RawCertificate := ⟨38, 6, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (128663 / 10000 : ℚ), (21443 / 2000 : ℚ), (1181 / 80 : ℚ), (214129 / 10000 : ℚ), (160309 / 5000 : ℚ), (40 / 1 : ℚ), (19503 / 2500 : ℚ), (77263 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_38_6_valid : ValidCertificate certificate_38_6 := by
  decide +kernel
theorem certificate_38_6_cap : FirstCap certificate_38_6 := by
  decide +kernel

def certificate_38_7 : RawCertificate := ⟨38, 7, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (128429 / 10000 : ℚ), (12667 / 1250 : ℚ), (140919 / 10000 : ℚ), (211581 / 10000 : ℚ), (155387 / 5000 : ℚ), (40 / 1 : ℚ), (16781 / 2000 : ℚ), (50269 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_38_7_valid : ValidCertificate certificate_38_7 := by
  decide +kernel
theorem certificate_38_7_cap : FirstCap certificate_38_7 := by
  decide +kernel

def certificate_38_8 : RawCertificate := ⟨38, 8, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (64109 / 5000 : ℚ), (48109 / 5000 : ℚ), (67543 / 5000 : ℚ), (209347 / 10000 : ℚ), (151113 / 5000 : ℚ), (40 / 1 : ℚ), (89023 / 10000 : ℚ), (26783 / 10000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_38_8_valid : ValidCertificate certificate_38_8 := by
  decide +kernel
theorem certificate_38_8_cap : FirstCap certificate_38_8 := by
  decide +kernel

def certificate_38_9 : RawCertificate := ⟨38, 9, [3, 4, 5, 21, 22, 23, 25, 33, 39], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (128051 / 10000 : ℚ), (46127 / 5000 : ℚ), (130571 / 10000 : ℚ), (103803 / 5000 : ℚ), (295619 / 10000 : ℚ), (40 / 1 : ℚ), (46489 / 5000 : ℚ), (4303 / 5000 : ℚ), (40 / 1 : ℚ)]⟩
theorem certificate_38_9_valid : ValidCertificate certificate_38_9 := by
  decide +kernel
theorem certificate_38_9_cap : FirstCap certificate_38_9 := by
  decide +kernel

def filter_38_certificates : List RawCertificate := [certificate_38_0, certificate_38_1, certificate_38_2, certificate_38_3, certificate_38_4, certificate_38_5, certificate_38_6, certificate_38_7, certificate_38_8, certificate_38_9]
theorem filter_38_certificates_count : filter_38_certificates.length = 10 := by rfl
theorem filter_38_certificates_valid : ∀ c ∈ filter_38_certificates, ValidCertificate c := by
  exact all_cons certificate_38_0_valid (all_cons certificate_38_1_valid (all_cons certificate_38_2_valid (all_cons certificate_38_3_valid (all_cons certificate_38_4_valid (all_cons certificate_38_5_valid (all_cons certificate_38_6_valid (all_cons certificate_38_7_valid (all_cons certificate_38_8_valid (all_cons certificate_38_9_valid (all_nil))))))))))
theorem filter_38_certificates_caps : ∀ c ∈ filter_38_certificates, FirstCap c := by
  exact all_cons certificate_38_0_cap (all_cons certificate_38_1_cap (all_cons certificate_38_2_cap (all_cons certificate_38_3_cap (all_cons certificate_38_4_cap (all_cons certificate_38_5_cap (all_cons certificate_38_6_cap (all_cons certificate_38_7_cap (all_cons certificate_38_8_cap (all_cons certificate_38_9_cap (all_nil))))))))))

end SubsetSum.FilterData
