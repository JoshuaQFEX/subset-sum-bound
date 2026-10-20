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

def filter_34 : RawFilter := ⟨(103437 / 100000 : ℚ), [(86871 / 100000 : ℚ), (12877 / 25000 : ℚ), (8589 / 20000 : ℚ), (-43509 / 100000 : ℚ), (-25321 / 100000 : ℚ), (142 / 625 : ℚ), (23493 / 100000 : ℚ), (-2771 / 12500 : ℚ)], [(22373 / 20000 : ℚ), (-69451 / 100000 : ℚ), (489 / 1000 : ℚ), (22189 / 100000 : ℚ), (-10513 / 50000 : ℚ), (-14509 / 100000 : ℚ), (13319 / 100000 : ℚ), (2801 / 20000 : ℚ)]⟩
theorem filter_34_valid : ValidFilter filter_34 := by
  decide +kernel

def certificate_34_0 : RawCertificate := ⟨34, 0, [28, 32, 37, 38, 39], [(423 / 50 : ℚ), (0 / 1 : ℚ), (337 / 200 : ℚ), (9313 / 2500 : ℚ), (897 / 2500 : ℚ), (2761 / 2000 : ℚ), (12413 / 10000 : ℚ)]⟩
theorem certificate_34_0_valid : ValidCertificate certificate_34_0 := by
  decide +kernel
theorem certificate_34_0_cap : FirstCap certificate_34_0 := by
  decide +kernel

def certificate_34_1 : RawCertificate := ⟨34, 1, [28, 32, 37], [(40289 / 5000 : ℚ), (2711 / 5000 : ℚ), (0 / 1 : ℚ), (24521 / 10000 : ℚ), (21627 / 5000 : ℚ), (22871 / 10000 : ℚ)]⟩
theorem certificate_34_1_valid : ValidCertificate certificate_34_1 := by
  decide +kernel
theorem certificate_34_1_cap : FirstCap certificate_34_1 := by
  decide +kernel

def certificate_34_2 : RawCertificate := ⟨34, 2, [3, 5, 21, 22, 23, 25, 27, 39], [(8001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (17151 / 1250 : ℚ), (10049 / 2000 : ℚ), (12271 / 625 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (131679 / 10000 : ℚ), (265879 / 10000 : ℚ), (342393 / 10000 : ℚ)]⟩
theorem certificate_34_2_valid : ValidCertificate certificate_34_2 := by
  decide +kernel
theorem certificate_34_2_cap : FirstCap certificate_34_2 := by
  decide +kernel

def certificate_34_3 : RawCertificate := ⟨34, 3, [3, 5, 21, 22, 23, 25, 27, 39], [(6251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (33229 / 2500 : ℚ), (51613 / 10000 : ℚ), (42839 / 2500 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (31973 / 2500 : ℚ), (279057 / 10000 : ℚ), (340223 / 10000 : ℚ)]⟩
theorem certificate_34_3_valid : ValidCertificate certificate_34_3 := by
  decide +kernel
theorem certificate_34_3_cap : FirstCap certificate_34_3 := by
  decide +kernel

def certificate_34_4 : RawCertificate := ⟨34, 4, [3, 5, 21, 22, 23, 25, 27, 39], [(5001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (64933 / 5000 : ℚ), (657 / 125 : ℚ), (9606 / 625 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (62577 / 5000 : ℚ), (28849 / 1000 : ℚ), (338607 / 10000 : ℚ)]⟩
theorem certificate_34_4_valid : ValidCertificate certificate_34_4 := by
  decide +kernel
theorem certificate_34_4_cap : FirstCap certificate_34_4 := by
  decide +kernel

def certificate_34_5 : RawCertificate := ⟨34, 5, [3, 5, 21, 22, 23, 25, 27, 39], [(481 / 1250 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (63531 / 5000 : ℚ), (53411 / 10000 : ℚ), (13753 / 1000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (61303 / 5000 : ℚ), (148603 / 5000 : ℚ), (168533 / 5000 : ℚ)]⟩
theorem certificate_34_5_valid : ValidCertificate certificate_34_5 := by
  decide +kernel
theorem certificate_34_5_cap : FirstCap certificate_34_5 := by
  decide +kernel

def certificate_34_6 : RawCertificate := ⟨34, 6, [3, 5, 21, 22, 23, 25, 27, 39], [(2859 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (124667 / 10000 : ℚ), (433 / 80 : ℚ), (7736 / 625 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (60203 / 5000 : ℚ), (304681 / 10000 : ℚ), (167853 / 5000 : ℚ)]⟩
theorem certificate_34_6_valid : ValidCertificate certificate_34_6 := by
  decide +kernel
theorem certificate_34_6_cap : FirstCap certificate_34_6 := by
  decide +kernel

def certificate_34_7 : RawCertificate := ⟨34, 7, [3, 5, 21, 22, 23, 25, 27, 39], [(2001 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (61299 / 5000 : ℚ), (54733 / 10000 : ℚ), (27983 / 2500 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (118489 / 10000 : ℚ), (7779 / 250 : ℚ), (20906 / 625 : ℚ)]⟩
theorem certificate_34_7_valid : ValidCertificate certificate_34_7 := by
  decide +kernel
theorem certificate_34_7_cap : FirstCap certificate_34_7 := by
  decide +kernel

def certificate_34_8 : RawCertificate := ⟨34, 8, [3, 5, 21, 22, 23, 25, 27, 39], [(1251 / 10000 : ℚ), (40 / 1 : ℚ), (0 / 1 : ℚ), (15099 / 1250 : ℚ), (55257 / 10000 : ℚ), (813 / 80 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (116803 / 10000 : ℚ), (31683 / 1000 : ℚ), (16671 / 500 : ℚ)]⟩
theorem certificate_34_8_valid : ValidCertificate certificate_34_8 := by
  decide +kernel
theorem certificate_34_8_cap : FirstCap certificate_34_8 := by
  decide +kernel

def certificate_34_9 : RawCertificate := ⟨34, 9, [3, 5, 21, 22, 23, 25, 27, 39], [(167 / 2500 : ℚ), (40 / 1 : ℚ), (119391 / 10000 : ℚ), (27829 / 5000 : ℚ), (46823 / 5000 : ℚ), (40 / 1 : ℚ), (40 / 1 : ℚ), (115487 / 10000 : ℚ), (160621 / 5000 : ℚ), (83141 / 2500 : ℚ)]⟩
theorem certificate_34_9_valid : ValidCertificate certificate_34_9 := by
  decide +kernel
theorem certificate_34_9_cap : FirstCap certificate_34_9 := by
  decide +kernel

def filter_34_certificates : List RawCertificate := [certificate_34_0, certificate_34_1, certificate_34_2, certificate_34_3, certificate_34_4, certificate_34_5, certificate_34_6, certificate_34_7, certificate_34_8, certificate_34_9]
theorem filter_34_certificates_count : filter_34_certificates.length = 10 := by rfl
theorem filter_34_certificates_valid : ∀ c ∈ filter_34_certificates, ValidCertificate c := by
  exact all_cons certificate_34_0_valid (all_cons certificate_34_1_valid (all_cons certificate_34_2_valid (all_cons certificate_34_3_valid (all_cons certificate_34_4_valid (all_cons certificate_34_5_valid (all_cons certificate_34_6_valid (all_cons certificate_34_7_valid (all_cons certificate_34_8_valid (all_cons certificate_34_9_valid (all_nil))))))))))
theorem filter_34_certificates_caps : ∀ c ∈ filter_34_certificates, FirstCap c := by
  exact all_cons certificate_34_0_cap (all_cons certificate_34_1_cap (all_cons certificate_34_2_cap (all_cons certificate_34_3_cap (all_cons certificate_34_4_cap (all_cons certificate_34_5_cap (all_cons certificate_34_6_cap (all_cons certificate_34_7_cap (all_cons certificate_34_8_cap (all_cons certificate_34_9_cap (all_nil))))))))))

end SubsetSum.FilterData
