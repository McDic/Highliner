# Invalidate current diff
function highliner:game/board/capture
data modify storage highliner:current_diff placing_direction set value 0

# Go to next turn with currently_skipped = 1
tellraw @a {"translate": "highliner.message.out_of_time.skipped", "color": "yellow", "italic": true, "with":[{"selector": "@p[team=!spectators,scores={turn=1}]"}]}
scoreboard players set !currently_skipped constants 1
function highliner:game/progress/next_turn
