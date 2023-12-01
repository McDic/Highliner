# This function is common logic of unit tile changing for both forward and backward.
# Usage: function THIS_FUNCTION with {x: x, z: z, target_state: 0~6}
# where SOME_STORAGE has a format of individual element of "state_changes".

$tp @s $(x) 73 $(z)
$scoreboard players set !target_state constants $(target_state)

# We don't care about tile theme here, because will refresh whole board after all unit tiles are placed.
execute at @s if score !target_state constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:air
execute at @s if score !target_state constants matches 1..2 if score !is_red_turn constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:red_wool
execute at @s if score !target_state constants matches 1..2 if score !is_red_turn constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:light_blue_wool
execute at @s if score !target_state constants matches 3 if score !is_red_turn constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:magenta_wool
execute at @s if score !target_state constants matches 3 if score !is_red_turn constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:blue_wool
execute at @s if score !target_state constants matches 4..5 if score !is_red_turn constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:light_blue_wool
execute at @s if score !target_state constants matches 4..5 if score !is_red_turn constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:red_wool
execute at @s if score !target_state constants matches 6 if score !is_red_turn constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:blue_wool
execute at @s if score !target_state constants matches 6 if score !is_red_turn constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:magenta_wool

# Remove some blocks on bridge; Will bridgefill later.
scoreboard players set !target_state_is_bridge constants 0
execute if score !target_state constants matches 2 run scoreboard players set !target_state_is_bridge constants 1
execute if score !target_state constants matches 5 run scoreboard players set !target_state_is_bridge constants 1
execute at @s if score !target_state_is_bridge constants matches 1 run fill ~1 73 ~0 ~2 73 ~0 minecraft:air
execute at @s if score !target_state_is_bridge constants matches 1 run fill ~0 73 ~1 ~0 73 ~2 minecraft:air
execute at @s if score !target_state_is_bridge constants matches 1 run fill ~1 73 ~3 ~2 73 ~3 minecraft:air
execute at @s if score !target_state_is_bridge constants matches 1 run fill ~3 73 ~1 ~3 73 ~2 minecraft:air
