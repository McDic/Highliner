# Calculate scores and timers
# Turn x's move is saved on highliner:current_match.diffs[x-1]. Assume until diffs[x-1] is applied.
data modify storage highliner:temp_storage temp_args set value {}
scoreboard players remove !turn constants 1
execute store result storage highliner:temp_storage temp_args.diff_index int 1 run scoreboard players get !turn constants
scoreboard players add !turn constants 1
function highliner:replay/progress/load with storage highliner:temp_storage temp_args

# Refresh several board stuffs
scoreboard players remove !tile_theme constants 1
function highliner:settings/tile_theme
function highliner:game/progress/calculate_score/main
execute as @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] at @s run function highliner:game/placing/preview

# Now give free again
scoreboard players set !moving_turn_in_progress constants 0
