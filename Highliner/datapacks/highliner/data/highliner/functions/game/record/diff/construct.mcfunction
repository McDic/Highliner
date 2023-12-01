# This function constructs the difference, but do not save it immediately.
# This function assumes `highliner:game/board/check/is_not_placeable` returned 0 recently,
# and uses temporary variables directly, which is quite unsafe.
# Therefore this function should be called for internal purposes only.

execute store result storage highliner:current_diff timer_red int 1 run scoreboard players get !timer_red constants
execute store result storage highliner:current_diff timer_blue int 1 run scoreboard players get !timer_blue constants
function highliner:game/get_turn
execute store result storage highliner:current_diff is_red_placed byte 1 run scoreboard players get !is_red_turn constants
execute store result storage highliner:current_diff placing_direction int 1 run scoreboard players get !placing_direction constants
data modify storage highliner:current_diff x set from entity @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] Pos[0]
data modify storage highliner:current_diff z set from entity @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] Pos[2]
data modify storage highliner:current_diff state_changes set value []
