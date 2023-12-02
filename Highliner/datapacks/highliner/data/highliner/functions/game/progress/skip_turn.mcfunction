# Invalidate current diff
function highliner:game/record/diff/construct
data modify storage highliner:current_diff placing_direction set value 0

# Go to next turn with currently_skipped = 1
scoreboard players set !currently_skipped constants 1
function highliner:game/progress/next_turn
