/-
Author: Joshua Wharton, QFEX, joshua@qfex.com
Prepared with ChatGPT.
Actual distinct subset-sum supports and their logarithmic deficiencies.
-/
import SubsetSum.Decision

set_option autoImplicit false
set_option maxHeartbeats 2000000

namespace SubsetSum
namespace Support
noncomputable section
open Finset

variable {n : ℕ}

def sumSupport (w : Fin n → ℤ) (V : Finset (Fin n)) : Finset ℤ :=
  V.powerset.image (weightSum w)

@[simp] lemma mem_sumSupport (w : Fin n → ℤ) (V : Finset (Fin n)) (x : ℤ) :
    x ∈ sumSupport w V ↔ ∃ S ⊆ V, weightSum w S = x := by
  classical
  simp [sumSupport]

lemma support_nonempty (w : Fin n → ℤ) (V : Finset (Fin n)) :
    (sumSupport w V).Nonempty := by
  refine ⟨0, (mem_sumSupport w V 0).2 ⟨∅, Finset.empty_subset V, ?_⟩⟩
  simp [weightSum]

lemma support_card_pos (w : Fin n → ℤ) (V : Finset (Fin n)) :
    0 < (sumSupport w V).card := Finset.card_pos.mpr (support_nonempty w V)

lemma support_card_le_pow (w : Fin n → ℤ) (V : Finset (Fin n)) :
    (sumSupport w V).card ≤ 2 ^ V.card := by
  simpa [sumSupport] using Finset.card_image_le (s := V.powerset) (f := weightSum w)

lemma support_mono (w : Fin n → ℤ) {U V : Finset (Fin n)} (hUV : U ⊆ V) :
    sumSupport w U ⊆ sumSupport w V := by
  intro x hx
  obtain ⟨S, hS, rfl⟩ := (mem_sumSupport w U x).1 hx
  exact (mem_sumSupport w V _).2 ⟨S, hS.trans hUV, rfl⟩

lemma weightSum_insert (w : Fin n → ℤ) (i : Fin n) (S : Finset (Fin n))
    (hi : i ∉ S) : weightSum w (insert i S) = w i + weightSum w S := by
  simp [weightSum, hi]

/-- Adding one coordinate unions the old support with its translate. -/
theorem support_insert (w : Fin n → ℤ) (V : Finset (Fin n)) (i : Fin n) (hi : i ∉ V) :
    sumSupport w (insert i V) = sumSupport w V ∪ (sumSupport w V).image (fun x => w i + x) := by
  classical
  ext x
  constructor
  · intro hx
    obtain ⟨S, hS, rfl⟩ := (mem_sumSupport w _ x).1 hx
    by_cases hiS : i ∈ S
    · apply Finset.mem_union_right
      have herase : S.erase i ⊆ V := by
        intro j hj
        have hjS := (Finset.mem_erase.mp hj).2
        have hji := (Finset.mem_erase.mp hj).1
        exact (Finset.mem_insert.mp (hS hjS)).resolve_left hji
      refine Finset.mem_image.mpr ⟨weightSum w (S.erase i),
        (mem_sumSupport w V _).2 ⟨S.erase i, herase, rfl⟩, ?_⟩
      rw [← weightSum_insert w i (S.erase i) (Finset.notMem_erase i S),
        Finset.insert_erase hiS]
    · apply Finset.mem_union_left
      apply (mem_sumSupport w V _).2
      refine ⟨S, ?_, rfl⟩
      intro j hj
      rcases Finset.mem_insert.mp (hS hj) with hji | hjV
      · subst j
        exact (hiS hj).elim
      · exact hjV
  · intro hx
    rcases Finset.mem_union.mp hx with hx | hx
    · exact support_mono w (Finset.subset_insert i V) hx
    · obtain ⟨y, hy, rfl⟩ := Finset.mem_image.mp hx
      obtain ⟨S, hS, rfl⟩ := (mem_sumSupport w V y).1 hy
      refine (mem_sumSupport w (insert i V) _).2 ⟨insert i S, Finset.insert_subset_insert i hS, ?_⟩
      exact weightSum_insert w i S (fun h => hi (hS h))

lemma support_insert_card (w : Fin n → ℤ) (V : Finset (Fin n)) (i : Fin n) (hi : i ∉ V) :
    (sumSupport w V).card ≤ (sumSupport w (insert i V)).card ∧
    (sumSupport w (insert i V)).card ≤ 2 * (sumSupport w V).card := by
  constructor
  · exact Finset.card_le_card (support_mono w (Finset.subset_insert i V))
  · rw [support_insert w V i hi]
    have h := Finset.card_union_le (sumSupport w V) ((sumSupport w V).image (fun x => w i + x))
    have hI := Finset.card_image_le (s := sumSupport w V) (f := fun x => w i + x)
    omega

/-- The deficiency is defined from the actual support, not its estimated cardinality. -/
def deficiency (w : Fin n → ℤ) (V : Finset (Fin n)) : ℝ :=
  V.card - Real.log (sumSupport w V).card / Real.log 2

@[simp] theorem deficiency_empty (w : Fin n → ℤ) : deficiency w ∅ = 0 := by
  simp [deficiency, sumSupport, weightSum]

lemma log_two_pos : (0 : ℝ) < Real.log 2 := Real.log_pos (by norm_num)

/-- Deficiency is nonnegative and no greater than the number of coordinates. -/
theorem deficiency_bounds (w : Fin n → ℤ) (V : Finset (Fin n)) :
    0 ≤ deficiency w V ∧ deficiency w V ≤ V.card := by
  have hSpos : (0 : ℝ) < (sumSupport w V).card := by exact_mod_cast support_card_pos w V
  have hSone : (1 : ℝ) ≤ (sumSupport w V).card := by exact_mod_cast support_card_pos w V
  have hcard : ((sumSupport w V).card : ℝ) ≤ (2 : ℝ) ^ V.card := by
    exact_mod_cast support_card_le_pow w V
  have hlog := Real.log_le_log hSpos hcard
  rw [Real.log_pow] at hlog
  have hdiv : Real.log (sumSupport w V).card / Real.log 2 ≤ V.card :=
    (div_le_iff₀ log_two_pos).2 hlog
  have hnonneg : 0 ≤ Real.log (sumSupport w V).card / Real.log 2 :=
    div_nonneg (Real.log_nonneg hSone) log_two_pos.le
  unfold deficiency
  constructor <;> linarith

/-- A one-coordinate extension increases deficiency by a number in [0,1]. -/
theorem deficiency_insert_bounds (w : Fin n → ℤ) (V : Finset (Fin n))
    (i : Fin n) (hi : i ∉ V) :
    0 ≤ deficiency w (insert i V) - deficiency w V ∧
    deficiency w (insert i V) - deficiency w V ≤ 1 := by
  have hSpos : (0 : ℝ) < (sumSupport w V).card := by exact_mod_cast support_card_pos w V
  have hTpos : (0 : ℝ) < (sumSupport w (insert i V)).card := by
    exact_mod_cast support_card_pos w (insert i V)
  have hcard := support_insert_card w V i hi
  have hlo : ((sumSupport w V).card : ℝ) ≤ (sumSupport w (insert i V)).card := by
    exact_mod_cast hcard.1
  have hhi : ((sumSupport w (insert i V)).card : ℝ) ≤ 2 * (sumSupport w V).card := by
    exact_mod_cast hcard.2
  have hloglo := Real.log_le_log hSpos hlo
  have hloghi := Real.log_le_log hTpos hhi
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) hSpos.ne'] at hloghi
  have hdlo := div_le_div_of_nonneg_right hloglo log_two_pos.le
  have hdhi := div_le_div_of_nonneg_right hloghi log_two_pos.le
  simp only [add_div, div_self log_two_pos.ne'] at hdhi
  simp only [deficiency, Finset.card_insert_of_notMem hi, Nat.cast_add, Nat.cast_one]
  constructor <;> linarith

/-- Deficiency is monotone under restricting to a larger coordinate set. -/
theorem deficiency_mono (w : Fin n → ℤ) {U V : Finset (Fin n)} (hUV : U ⊆ V) :
    deficiency w U ≤ deficiency w V := by
  classical
  have hall : ∀ T : Finset (Fin n), deficiency w U ≤ deficiency w (U ∪ T) := by
    intro T
    induction T using Finset.induction_on with
    | empty => simp
    | @insert i T hi ih =>
      have he : U ∪ insert i T = insert i (U ∪ T) := by ext j; simp <;> tauto
      rw [he]
      by_cases hmem : i ∈ U ∪ T
      · simpa [Finset.insert_eq_of_mem hmem] using ih
      · have hinc := (deficiency_insert_bounds w (U ∪ T) i hmem).1
        linarith
  simpa [Finset.union_eq_right.mpr hUV] using hall V

/-- An exchange of one coordinate changes deficiency by at most one. -/
theorem deficiency_exchange (w : Fin n → ℤ) (U : Finset (Fin n)) (i j : Fin n)
    (hi : i ∉ U) (hj : j ∉ U) :
    |deficiency w (insert i U) - deficiency w (insert j U)| ≤ 1 := by
  have h1 := deficiency_insert_bounds w U i hi
  have h2 := deficiency_insert_bounds w U j hj
  rw [abs_le]
  constructor <;> linarith [h1.1, h1.2, h2.1, h2.2]

lemma support_union_card (w : Fin n → ℤ) (U V : Finset (Fin n))
    (hUV : Disjoint U V) :
    (sumSupport w (U ∪ V)).card ≤ (sumSupport w U).card * (sumSupport w V).card := by
  classical
  have hsub : sumSupport w (U ∪ V) ⊆
      ((sumSupport w U) ×ˢ (sumSupport w V)).image (fun p => p.1 + p.2) := by
    intro x hx
    obtain ⟨S, hS, rfl⟩ := (mem_sumSupport w (U ∪ V) x).1 hx
    have hSsplit : (S ∩ U) ∪ (S ∩ V) = S := by
      ext i
      constructor
      · simp only [Finset.mem_union, Finset.mem_inter]
        tauto
      · intro hi
        have h := Finset.mem_union.mp (hS hi)
        simp only [Finset.mem_union, Finset.mem_inter]
        tauto
    have hd : Disjoint (S ∩ U) (S ∩ V) :=
      hUV.mono Finset.inter_subset_right Finset.inter_subset_right
    refine Finset.mem_image.mpr ⟨(weightSum w (S ∩ U), weightSum w (S ∩ V)), ?_, ?_⟩
    · exact Finset.mem_product.mpr
        ⟨(mem_sumSupport w U _).2 ⟨S ∩ U, Finset.inter_subset_right, rfl⟩,
         (mem_sumSupport w V _).2 ⟨S ∩ V, Finset.inter_subset_right, rfl⟩⟩
    · change weightSum w (S ∩ U) + weightSum w (S ∩ V) = weightSum w S
      calc
        _ = weightSum w ((S ∩ U) ∪ (S ∩ V)) := by
          simp only [weightSum, Finset.sum_union hd]
        _ = weightSum w S := by rw [hSsplit]
  exact (Finset.card_le_card hsub).trans (by simpa using
    (Finset.card_image_le (s := (sumSupport w U) ×ˢ (sumSupport w V)) (f := fun p => p.1 + p.2)))

/-- Independent coordinate blocks have superadditive deficiencies. -/
theorem deficiency_superadditive (w : Fin n → ℤ) (U V : Finset (Fin n))
    (hUV : Disjoint U V) : deficiency w U + deficiency w V ≤ deficiency w (U ∪ V) := by
  have hU : (0 : ℝ) < (sumSupport w U).card := by exact_mod_cast support_card_pos w U
  have hV : (0 : ℝ) < (sumSupport w V).card := by exact_mod_cast support_card_pos w V
  have hUVp : (0 : ℝ) < (sumSupport w (U ∪ V)).card := by
    exact_mod_cast support_card_pos w (U ∪ V)
  have hc : ((sumSupport w (U ∪ V)).card : ℝ) ≤
      (sumSupport w U).card * (sumSupport w V).card := by
    exact_mod_cast support_union_card w U V hUV
  have hl := Real.log_le_log hUVp hc
  rw [Real.log_mul hU.ne' hV.ne'] at hl
  have hdiv := div_le_div_of_nonneg_right hl log_two_pos.le
  simp only [add_div] at hdiv
  simp only [deficiency, Finset.card_union_of_disjoint hUV, Nat.cast_add]
  linarith

end
end Support
end SubsetSum
