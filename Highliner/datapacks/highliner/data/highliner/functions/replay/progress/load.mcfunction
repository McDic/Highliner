# Load from storage, move placing_preview to corresponding location and store some timers.
$data modify storage highliner:temp_storage temp_diff merge from storage highliner:current_match diffs[$(diff_index)]

execute store result score !replay_is_red_placed constants run data get storage highliner:temp_storage temp_diff.is_red_placed
function highliner:game/get_turn
execute store result score !timer_red constants run data get storage highliner:temp_storage temp_diff.timer_red
execute store result score !timer_blue constants run data get storage highliner:temp_storage temp_diff.timer_blue
execute store result score !placing_direction constants run data get storage highliner:temp_storage temp_diff.placing_direction

data modify storage highliner:temp_storage temp_pos set value [0.0, 73.0, 0.0]
data modify storage highliner:temp_storage temp_pos[0] set from storage highliner:temp_storage temp_diff.x
data modify storage highliner:temp_storage temp_pos[2] set from storage highliner:temp_storage temp_diff.z
data modify entity @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] Pos set from storage highliner:temp_storage temp_pos

# This should be done to do proper placing
execute as @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] at @s run function highliner:game/placing/preview
