import Mathlib

#check Finset.expect_eq_sum_div_card
#check Finset.card_powersetCard
#check Finset.card_image_iff
#check List.forall_mem_cons
#check List.forall_mem_nil
#check Finset.sum_fiberwise_of_maps_to

#eval do
  let r ← IO.Process.output {cmd := "bash", args := #["-lc", "find .lake/packages/mathlib/Mathlib -iname '*Chebyshev*' -o -iname '*Bertrand*' -o -iname '*Azuma*' -o -iname '*Hoeffding*' -o -iname '*Concentration*'"]}
  IO.println r.stdout
