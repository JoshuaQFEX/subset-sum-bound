/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT. Finite data from a-kapila/maths-proofs.
Pinned source commit: 44c34961b56784c220a6e913cc068d57dc37c5a3
Pinned Git blob: 526c2622038a633cbc1bef9ef5e3f4514843cd91
Finite rational statements only; not continuous integral estimates.
-/
import Mathlib

set_option autoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 100000

namespace SubsetSum.FilterData

structure RawFilter where
  kappa : ℚ
  rCoeffs : List ℚ
  sCoeffs : List ℚ
  deriving DecidableEq

structure RawCertificate where
  filterIndex : Fin 43
  region : Fin 10
  comparisons : List (Fin 43)
  multipliers : List ℚ
  deriving DecidableEq

def lowerBoundary (r : Fin 10) : ℚ :=
  [0, 1, 5/4, 8/5, 2, 13/5, 7/2, 5, 8, 15].getD r.val 0

def ValidFilter (f : RawFilter) : Prop :=
  f.rCoeffs.length = 8 ∧ f.sCoeffs.length = 8 ∧
  1 ≤ f.kappa ∧ f.kappa ≤ 2 ∧
  (∀ x ∈ f.rCoeffs, |x| ≤ 2) ∧ (∀ x ∈ f.sCoeffs, |x| ≤ 2)

def ValidCertificate (c : RawCertificate) : Prop :=
  c.multipliers.length = c.comparisons.length +
    (if c.region.val = 0 ∨ c.region.val = 9 then 2 else 3) ∧
  (∀ z ∈ c.multipliers, 0 ≤ z) ∧ c.multipliers.sum ≤ (10459/25 : ℚ) ∧
  (∀ j ∈ c.comparisons, j ≠ c.filterIndex) ∧
  (if c.region.val = 0 then 1 ≤ c.multipliers.headD 0
   else 1 ≤ lowerBoundary c.region * c.multipliers.headD 0)

def FirstCap (c : RawCertificate) : Prop :=
  (c.region.val = 0 → c.multipliers.headD 0 ≤ (17211/1000 : ℚ)) ∧
  (c.region.val = 1 → c.multipliers.headD 0 ≤ (84537/10000 : ℚ))

instance (f : RawFilter) : Decidable (ValidFilter f) := by
  unfold ValidFilter
  infer_instance

instance (c : RawCertificate) : Decidable (ValidCertificate c) := by
  unfold ValidCertificate
  infer_instance

instance (c : RawCertificate) : Decidable (FirstCap c) := by
  unfold FirstCap
  infer_instance

lemma all_nil {A : Type*} {P : A → Prop} : ∀ x ∈ ([] : List A), P x := by
  simp

lemma all_cons {A : Type*} {P : A → Prop} {a : A} {xs : List A}
    (ha : P a) (hs : ∀ x ∈ xs, P x) : ∀ x ∈ a :: xs, P x := by
  intro x hx
  rcases List.mem_cons.mp hx with rfl | hx
  · exact ha
  · exact hs x hx

lemma all_append {A : Type*} {P : A → Prop} {xs ys : List A}
    (hx : ∀ x ∈ xs, P x) (hy : ∀ y ∈ ys, P y) : ∀ z ∈ xs ++ ys, P z := by
  intro z hz
  rcases List.mem_append.mp hz with hz | hz
  · exact hx z hz
  · exact hy z hz

/-- Regression tests: malformed finite inputs are rejected by the predicates. -/
theorem invalid_filter_rejected : ¬ ValidFilter ⟨0, [], []⟩ := by
  decide +kernel

theorem negative_multiplier_rejected : ¬ ValidCertificate ⟨0, 0, [], [-1, -1]⟩ := by
  decide +kernel

end SubsetSum.FilterData
