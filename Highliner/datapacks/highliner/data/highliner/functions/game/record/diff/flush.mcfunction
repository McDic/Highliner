# After placing, apply all differences and add current diff.
execute store result score !temp_current_diff_placing_direction constants run data get storage highliner:current_diff placing_direction

# If turn should not be skipped? Assuming board refresh is already done.
execute unless score !temp_current_diff_placing_direction constants matches 0 run function highliner:game/board/clone/all
execute unless score !temp_current_diff_placing_direction constants matches 0 run function highliner:game/board/reset/applied
execute unless score !temp_current_diff_placing_direction constants matches 0 run execute positioned -2 73 -2 run function highliner:game/board/apply/all_tiles {apply_func: "highliner:game/record/diff/individual_change"}

# Append
data modify storage highliner:current_match diffs append from storage highliner:current_diff
