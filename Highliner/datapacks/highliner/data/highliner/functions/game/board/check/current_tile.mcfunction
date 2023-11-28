# Assuming clone is already done, and checking status of current tile.
# This function do not look at adjacent tiles.
# empty 0 (air), my normal 1, my bridge 2, my dominated 3, opponent normal 4, opponent bridge 5, opponent dominated 6, invalid -1
# empty air, lime mine(normal), green mine(dominated), light gray opponent(normal), gray opponent(dominated)

execute if block ~ 71 ~ minecraft:air run return 0
execute if block ~ 71 ~ minecraft:green_wool run return 3
execute if block ~ 71 ~ minecraft:gray_wool run return 6
execute store result score !is_my_side constants if block ~ 71 ~ minecraft:lime_wool
execute store result score !is_opponent_side constants if block ~ 71 ~ minecraft:light_gray_wool
execute if score !is_my_side constants matches 1 store result score !is_bridged constants run function highliner:game/board/check/is_my_bridge
execute if score !is_opponent_side constants matches 1 store result score !is_bridged constants run function highliner:game/board/check/is_opponent_bridge
execute if score !is_my_side constants matches 1 if score !is_bridged constants matches 0 run return 1
execute if score !is_my_side constants matches 1 unless score !is_bridged constants matches 0 run return 2
execute if score !is_opponent_side constants matches 1 if score !is_bridged constants matches 0 run return 4
execute if score !is_opponent_side constants matches 1 unless score !is_bridged constants matches 0 run return 5
say "FATAL ERROR: INVALID TILE DETECTED"
return -1
