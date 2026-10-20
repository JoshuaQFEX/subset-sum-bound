import Mathlib

#check Nat.choose_pos
#check Nat.choose_mul
#check Finset.sum_div
#check Finset.sum_const
#check Finset.sum_comm
#check Finset.sum_le_sum
#check Finset.card_image_iff
#check Finset.sdiff_sdiff_eq_self
#check Real.rpow_logb

#eval do
  let r ← IO.Process.output {cmd := "bash", args := #["-lc", "grep -R -n -E 'theorem choose.*le|lemma choose.*le|monotone.*choose|choose_le_choose' .lake/packages/mathlib/Mathlib/Data/Nat/Choose | head -50"]}
  IO.println r.stdout
