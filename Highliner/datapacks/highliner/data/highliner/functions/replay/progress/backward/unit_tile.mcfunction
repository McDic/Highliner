data modify storage highliner:temp_storage temp_pos set value [0.0d, 73.0d, 0.0d]
data modify storage highliner:temp_storage temp_pos[0] set from storage highliner:temp_storage temp_prev_state.x
data modify storage highliner:temp_storage temp_pos[2] set from storage highliner:temp_storage temp_prev_state.z
data modify entity @s Pos set from storage highliner:temp_storage temp_pos

# Is bridge?
scoreboard players set !prev_tile_is_bridge constants 0
execute if score !prev_tile_state constants matches 2 run scoreboard players set !prev_tile_is_bridge constants 1
execute if score !prev_tile_state constants matches 5 run scoreboard players set !prev_tile_is_bridge constants 1

# We don't care about tile theme here, because will refresh whole board after all unit tiles are placed.
execute at @s if score !prev_tile_state constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:air
execute at @s if score !prev_tile_state constants matches 1..2 if score !is_red_turn constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:red_wool
execute at @s if score !prev_tile_state constants matches 1..2 if score !is_red_turn constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:light_blue_wool
execute at @s if score !prev_tile_state constants matches 3 if score !is_red_turn constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:magenta_wool
execute at @s if score !prev_tile_state constants matches 3 if score !is_red_turn constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:blue_wool
execute at @s if score !prev_tile_state constants matches 4..5 if score !is_red_turn constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:light_blue_wool
execute at @s if score !prev_tile_state constants matches 4..5 if score !is_red_turn constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:red_wool
execute at @s if score !prev_tile_state constants matches 6 if score !is_red_turn constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:blue_wool
execute at @s if score !prev_tile_state constants matches 6 if score !is_red_turn constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:magenta_wool

execute at @s if score !prev_tile_is_bridge constants matches 1 run fill ~1 73 ~0 ~2 73 ~0 minecraft:air
execute at @s if score !prev_tile_is_bridge constants matches 1 run fill ~0 73 ~1 ~0 73 ~2 minecraft:air
execute at @s if score !prev_tile_is_bridge constants matches 1 run fill ~1 73 ~3 ~2 73 ~3 minecraft:air
execute at @s if score !prev_tile_is_bridge constants matches 1 run fill ~3 73 ~1 ~3 73 ~2 minecraft:air
