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

def filter_39 : RawFilter := ⟨(103469 / 100000 : ℚ), [(108 / 125 : ℚ), (51097 / 100000 : ℚ), (2631 / 6250 : ℚ), (-10677 / 25000 : ℚ), (-28147 / 100000 : ℚ), (25407 / 100000 : ℚ), (22187 / 100000 : ℚ), (-2503 / 12500 : ℚ)], [(55897 / 50000 : ℚ), (-17119 / 25000 : ℚ), (47639 / 100000 : ℚ), (23281 / 100000 : ℚ), (-722 / 3125 : ℚ), (-16673 / 100000 : ℚ), (2749 / 20000 : ℚ), (1477 / 12500 : ℚ)]⟩
theorem filter_39_valid : ValidFilter filter_39 := by
  decide +kernel

def certificate_39_0 : RawCertificate := ⟨39, 0, [28, 32, 34, 37, 38], [(423 / 50 : ℚ), (0 / 1 : ℚ), (337 / 200 : ℚ), (9313 / 2500 : ℚ), (173 / 2500 : ℚ), (897 / 2500 : ℚ), (2761 / 2000 : ℚ)]⟩
theorem certificate_39_0_valid : ValidCertificate certificate_39_0 := by
  decide +kernel
theorem certificate_39_0_cap : FirstCap certificate_39_0 := by
  decide +kernel

def certificate_39_1 : RawCertificate := ⟨39, 1, [28, 32, 34, 37, 38], [(7881 / 1000 : ℚ), (619 / 625 : ℚ), (0 / 1 : ℚ), (23541 / 10000 : ℚ), (50639 / 10000 : ℚ), (1729 / 2500 : ℚ), (37929 / 10000 : ℚ), (7231 / 10000 : ℚ)]⟩
theorem certificate_39_1_valid : ValidCertificate certificate_39_1 := by
  decide +kernel
theorem certificate_39_1_cap : FirstCap certificate_39_1 := by
  decide +kernel

def certificate_39_2 : RawCertificate := ⟨39, 2, [3, 4, 5, 21, 22, 23, 25], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (44531 / 10000 : ℚ), (83257 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (21653 / 625 : ℚ), (40 / 1 : ℚ), (77307 / 5000 : ℚ)]⟩
theorem certificate_39_2_valid : ValidCertificate certificate_39_2 := by
  decide +kernel
theorem certificate_39_2_cap : FirstCap certificate_39_2 := by
  decide +kernel

def certificate_39_3 : RawCertificate := ⟨39, 3, [3, 4, 5, 21, 22, 23, 25], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (2681 / 625 : ℚ), (165103 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (13881 / 400 : ℚ), (40 / 1 : ℚ), (19043 / 1250 : ℚ)]⟩
theorem certificate_39_3_valid : ValidCertificate certificate_39_3 := by
  decide +kernel
theorem certificate_39_3_cap : FirstCap certificate_39_3 := by
  decide +kernel

def certificate_39_4 : RawCertificate := ⟨39, 4, [3, 4, 5, 21, 22, 23, 25], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (41719 / 10000 : ℚ), (164111 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (173773 / 5000 : ℚ), (40 / 1 : ℚ), (75349 / 5000 : ℚ)]⟩
theorem certificate_39_4_valid : ValidCertificate certificate_39_4 := by
  decide +kernel
theorem certificate_39_4_cap : FirstCap certificate_39_4 := by
  decide +kernel

def certificate_39_5 : RawCertificate := ⟨39, 5, [3, 4, 5, 21, 22, 23, 25], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (40627 / 10000 : ℚ), (81603 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (43513 / 1250 : ℚ), (40 / 1 : ℚ), (74581 / 5000 : ℚ)]⟩
theorem certificate_39_5_valid : ValidCertificate certificate_39_5 := by
  decide +kernel
theorem certificate_39_5_cap : FirstCap certificate_39_5 := by
  decide +kernel

def certificate_39_6 : RawCertificate := ⟨39, 6, [3, 4, 5, 21, 22, 23, 25], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (19843 / 5000 : ℚ), (162439 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (348637 / 10000 : ℚ), (40 / 1 : ℚ), (73917 / 5000 : ℚ)]⟩
theorem certificate_39_6_valid : ValidCertificate certificate_39_6 := by
  decide +kernel
theorem certificate_39_6_cap : FirstCap certificate_39_6 := by
  decide +kernel

def certificate_39_7 : RawCertificate := ⟨39, 7, [3, 4, 5, 21, 22, 23, 25], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (9717 / 2500 : ℚ), (161781 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (349139 / 10000 : ℚ), (40 / 1 : ℚ), (5867 / 400 : ℚ)]⟩
theorem certificate_39_7_valid : ValidCertificate certificate_39_7 := by
  decide +kernel
theorem certificate_39_7_cap : FirstCap certificate_39_7 := by
  decide +kernel

def certificate_39_8 : RawCertificate := ⟨39, 8, [3, 4, 5, 21, 22, 23, 25], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (763 / 200 : ℚ), (161209 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (349607 / 10000 : ℚ), (40 / 1 : ℚ), (29131 / 2000 : ℚ)]⟩
theorem certificate_39_8_valid : ValidCertificate certificate_39_8 := by
  decide +kernel
theorem certificate_39_8_cap : FirstCap certificate_39_8 := by
  decide +kernel

def certificate_39_9 : RawCertificate := ⟨39, 9, [3, 4, 5, 21, 22, 23, 25], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (3759 / 1000 : ℚ), (160767 / 10000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (87497 / 2500 : ℚ), (40 / 1 : ℚ), (144857 / 10000 : ℚ)]⟩
theorem certificate_39_9_valid : ValidCertificate certificate_39_9 := by
  decide +kernel
theorem certificate_39_9_cap : FirstCap certificate_39_9 := by
  decide +kernel

def filter_39_certificates : List RawCertificate := [certificate_39_0, certificate_39_1, certificate_39_2, certificate_39_3, certificate_39_4, certificate_39_5, certificate_39_6, certificate_39_7, certificate_39_8, certificate_39_9]
theorem filter_39_certificates_count : filter_39_certificates.length = 10 := by rfl
theorem filter_39_certificates_valid : ∀ c ∈ filter_39_certificates, ValidCertificate c := by
  exact all_cons certificate_39_0_valid (all_cons certificate_39_1_valid (all_cons certificate_39_2_valid (all_cons certificate_39_3_valid (all_cons certificate_39_4_valid (all_cons certificate_39_5_valid (all_cons certificate_39_6_valid (all_cons certificate_39_7_valid (all_cons certificate_39_8_valid (all_cons certificate_39_9_valid (all_nil))))))))))
theorem filter_39_certificates_caps : ∀ c ∈ filter_39_certificates, FirstCap c := by
  exact all_cons certificate_39_0_cap (all_cons certificate_39_1_cap (all_cons certificate_39_2_cap (all_cons certificate_39_3_cap (all_cons certificate_39_4_cap (all_cons certificate_39_5_cap (all_cons certificate_39_6_cap (all_cons certificate_39_7_cap (all_cons certificate_39_8_cap (all_cons certificate_39_9_cap (all_nil))))))))))

end SubsetSum.FilterData
