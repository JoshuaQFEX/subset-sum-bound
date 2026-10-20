/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT.
The finite isolation lemma is proved by an injection, not assumed from a source.
Uniform probabilities are exact fractions of the finite assignment space.
-/
import SubsetSum.Decision

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace SubsetSum
namespace Isolation
noncomputable section
open Finset

variable {n R : ℕ}

/-- Minimum in an arbitrary finite family of subsets. -/
def Minimises (F : Finset (Finset (Fin n))) (w : Fin n → ℤ)
    (S : Finset (Fin n)) : Prop :=
  S ∈ F ∧ ∀ T ∈ F, weightSum w S ≤ weightSum w T

def UniqueMinimum (F : Finset (Finset (Fin n))) (w : Fin n → ℤ) : Prop :=
  ∃! S, Minimises F w S

/-- A critical coordinate belongs to one minimiser and not to another. -/
def CriticalAt (F : Finset (Finset (Fin n))) (w : Fin n → ℤ) (i : Fin n) : Prop :=
  ∃ A B, Minimises F w A ∧ Minimises F w B ∧ i ∈ A ∧ i ∉ B

lemma exists_minimiser (F : Finset (Finset (Fin n))) (hF : F.Nonempty)
    (w : Fin n → ℤ) : ∃ S, Minimises F w S := by
  classical
  let values := F.image (weightSum w)
  have hv : values.Nonempty := hF.image (weightSum w)
  obtain ⟨S, hS, hval⟩ := Finset.mem_image.mp (Finset.min'_mem values hv)
  refine ⟨S, hS, ?_⟩
  intro T hT
  rw [hval]
  exact Finset.min'_le values (weightSum w T) (Finset.mem_image.mpr ⟨T, hT, rfl⟩)

lemma nonunique_has_critical (F : Finset (Finset (Fin n))) (hF : F.Nonempty)
    (w : Fin n → ℤ) (hbad : ¬ UniqueMinimum F w) : ∃ i, CriticalAt F w i := by
  classical
  obtain ⟨A, hA⟩ := exists_minimiser F hF w
  have hex : ∃ B, Minimises F w B ∧ B ≠ A := by
    by_contra hn
    push_neg at hn
    exact hbad ⟨A, hA, hn⟩
  obtain ⟨B, hB, hBA⟩ := hex
  have hd : ∃ i, (i ∈ A ∧ i ∉ B) ∨ (i ∈ B ∧ i ∉ A) := by
    by_contra hn
    push_neg at hn
    apply hBA
    ext i
    have hi := hn i
    tauto
  obtain ⟨i, hi⟩ := hd
  rcases hi with hi | hi
  · exact ⟨i, A, B, hA, hB, hi.1, hi.2⟩
  · exact ⟨i, B, A, hB, hA, hi.1, hi.2⟩

lemma weightSum_change_coordinate (w v : Fin n → ℤ) (i : Fin n)
    (hrest : ∀ j, j ≠ i → w j = v j) (S : Finset (Fin n)) :
    weightSum v S = weightSum w S + if i ∈ S then v i - w i else 0 := by
  classical
  calc
    weightSum v S = ∑ j ∈ S, (w j + if j = i then v i - w i else 0) := by
      apply Finset.sum_congr rfl
      intro j _
      by_cases hj : j = i
      · subst j
        simp
      · simp [hj, hrest j hj]
    _ = weightSum w S + if i ∈ S then v i - w i else 0 := by
      simp [weightSum, Finset.sum_add_distrib]

/-- With the other coordinates fixed, at most one coordinate value is critical. -/
theorem critical_coordinate_unique (F : Finset (Finset (Fin n)))
    (w v : Fin n → ℤ) (i : Fin n)
    (hrest : ∀ j, j ≠ i → w j = v j)
    (hw : CriticalAt F w i) (hv : CriticalAt F v i) : w i = v i := by
  obtain ⟨A, B, hA, hB, hiA, hiB⟩ := hw
  obtain ⟨C, D, hC, hD, hiC, hiD⟩ := hv
  have eA := weightSum_change_coordinate w v i hrest A
  have eB := weightSum_change_coordinate w v i hrest B
  have eC := weightSum_change_coordinate w v i hrest C
  have eD := weightSum_change_coordinate w v i hrest D
  simp only [if_pos hiA] at eA
  simp only [if_neg hiB, add_zero] at eB
  simp only [if_pos hiC] at eC
  simp only [if_neg hiD, add_zero] at eD
  have h1 := hB.2 C hC.1
  have h2 := hC.2 B hB.1
  have h3 := hA.2 D hD.1
  have h4 := hD.2 A hA.1
  omega

/-- Each coordinate is an independent uniform integer in 1,...,R. -/
def tieWeights (f : Fin n → Fin R) (i : Fin n) : ℤ := (f i).val + 1

def badAssignments (n R : ℕ) (F : Finset (Finset (Fin n))) :
    Finset (Fin n → Fin R) := by
  classical
  exact Finset.univ.filter (fun f => ¬ UniqueMinimum F (tieWeights f))

def goodAssignments (n R : ℕ) (F : Finset (Finset (Fin n))) :
    Finset (Fin n → Fin R) := by
  classical
  exact Finset.univ.filter (fun f => UniqueMinimum F (tieWeights f))

/-- Combinatorial isolation lemma: |bad|*R <= n*R^n, including empty dimensions. -/
theorem isolation_count (F : Finset (Finset (Fin n))) (hF : F.Nonempty) (R : ℕ) :
    (badAssignments n R F).card * R ≤ n * R ^ n := by
  classical
  let Bad := ↥(badAssignments n R F)
  have hc : ∀ b : Bad, ∃ i, CriticalAt F (tieWeights b.val) i := by
    intro b
    exact nonunique_has_critical F hF (tieWeights b.val)
      (Finset.mem_filter.mp b.property).2
  let pivot (b : Bad) : Fin n := Classical.choose (hc b)
  have hp (b : Bad) : CriticalAt F (tieWeights b.val) (pivot b) :=
    Classical.choose_spec (hc b)
  let encode (p : Bad × Fin R) : Fin n × (Fin n → Fin R) :=
    (pivot p.1, Function.update p.1.val (pivot p.1) p.2)
  have hinj : Function.Injective encode := by
    intro x y he
    rcases x with ⟨b, t⟩
    rcases y with ⟨c, s⟩
    have hi := congrArg Prod.fst he
    change pivot b = pivot c at hi
    have hu := congrArg Prod.snd he
    change Function.update b.val (pivot b) t = Function.update c.val (pivot c) s at hu
    rw [← hi] at hu
    have hrest : ∀ j, j ≠ pivot b → b.val j = c.val j := by
      intro j hj
      have h := congrFun hu j
      simpa [hj] using h
    have hwrest : ∀ j, j ≠ pivot b → tieWeights b.val j = tieWeights c.val j := by
      intro j hj
      simp only [tieWeights, hrest j hj]
    have hcp : CriticalAt F (tieWeights c.val) (pivot b) := by
      rw [hi]
      exact hp c
    have hval := critical_coordinate_unique F (tieWeights b.val) (tieWeights c.val)
      (pivot b) hwrest (hp b) hcp
    have hf : b.val = c.val := by
      funext j
      by_cases hj : j = pivot b
      · subst j
        apply Fin.ext
        dsimp [tieWeights] at hval
        omega
      · exact hrest j hj
    have hbc : b = c := Subtype.ext hf
    have hts : t = s := by
      have h := congrFun hu (pivot b)
      simpa using h
    exact Prod.ext hbc hts
  have hcount := Fintype.card_le_of_injective encode hinj
  simpa [Bad, Fintype.card_fun] using hcount

lemma good_bad_partition (F : Finset (Finset (Fin n))) (R : ℕ) :
    (goodAssignments n R F).card + (badAssignments n R F).card = R ^ n := by
  classical
  have he : (goodAssignments n R F)ᶜ = badAssignments n R F := by
    ext f
    simp [goodAssignments, badAssignments]
  have h := Finset.card_add_card_compl (goodAssignments n R F)
  rw [he] at h
  simpa [Fintype.card_fun] using h

/-- The probability is the exact fraction of successful independent uniform assignments. -/
def successFraction (F : Finset (Finset (Fin n))) (R : ℕ) : ℚ :=
  (goodAssignments n R F).card / (R ^ n : ℕ)

/-- Full finite-probability isolation bound for any nonempty set family. -/
theorem isolation_probability (F : Finset (Finset (Fin n))) (hF : F.Nonempty)
    (R : ℕ) (hR : 0 < R) : 1 - (n : ℚ) / R ≤ successFraction F R := by
  have hR' : (0 : ℚ) < R := by exact_mod_cast hR
  have hN : (0 : ℚ) < (R ^ n : ℕ) := by exact_mod_cast (pow_pos hR n)
  have hb : ((badAssignments n R F).card : ℚ) * R ≤ (n : ℚ) * (R ^ n : ℕ) := by
    exact_mod_cast isolation_count F hF R
  have hp : ((goodAssignments n R F).card : ℚ) + (badAssignments n R F).card =
      (R ^ n : ℕ) := by exact_mod_cast good_bad_partition F R
  have he : 1 - (n : ℚ) / R = ((R : ℚ) - n) / R := by
    field_simp
  rw [he]
  unfold successFraction
  apply (div_le_div_iff₀ hR' hN).2
  nlinarith [congrArg (fun x : ℚ => x * R) hp]

/-- The paper's numerical success guarantee, for every R >= 12*n. -/
theorem isolation_eleven_twelfths (F : Finset (Finset (Fin n))) (hF : F.Nonempty)
    (R : ℕ) (hR : 0 < R) (hsize : 12 * n ≤ R) :
    (11 / 12 : ℚ) ≤ successFraction F R := by
  have h := isolation_probability F hF R hR
  have hR' : (0 : ℚ) < R := by exact_mod_cast hR
  have hs : 12 * (n : ℚ) ≤ R := by exact_mod_cast hsize
  have hn : (n : ℚ) / R ≤ 1 / 12 := by
    apply (div_le_iff₀ hR').2
    linarith
  linarith

end
end Isolation
end SubsetSum
