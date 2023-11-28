# After placing, apply all differences and add current diff.
function highliner:game/board/clone/all
function highliner:game/board/reset/applied
execute positioned -2 73 -2 run function highliner:game/board/apply/all_tiles {apply_func: "highliner:game/record/diff/prev_state/individual"}
data modify storage highliner:current_match diffs append from storage highliner:current_diff
