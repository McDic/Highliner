# Calculate scores and timers
# Turn x's move is saved on highliner:current_match.diffs[x-1]. Assume until diffs[x-1] is applied.
data modify storage highliner:temp_storage temp_args set value {}
scoreboard players remove !turn constants 1
execute store result storage highliner:temp_storage temp_args.diff_index int 1 run scoreboard players get !turn constants
scoreboard players add !turn constants 1
function highliner:replay/progress/load with storage highliner:temp_storage temp_args

# Refresh several board stuffs
function highliner:game/board/clone/all
function highliner:game/board/bridgefill/main
scoreboard players remove !tile_theme constants 1
function highliner:settings/tile_theme
function highliner:game/progress/calculate_score/main
execute unless score !placing_direction constants matches 0 as @e[type=minecraft:slime,name="placing_preview"] run data modify entity @s Glowing set value true
execute unless score !placing_direction constants matches 0 as @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] at @s run function highliner:game/placing/preview
execute if score !placing_direction constants matches 0 as @e[type=minecraft:slime,name="placing_preview"] run data modify entity @s Glowing set value false

# Now give free again
scoreboard players set !moving_turn_in_progress constants 0
execute as @a run function highliner:game/items/reset
