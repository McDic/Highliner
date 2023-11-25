# Suppose this function is executed at marker
fill ~ 73 ~ ~3 73 ~3 minecraft:lime_wool

execute if score !placing_direction constants matches 1 run fill ~1 73 ~ ~2 73 ~ minecraft:air replace minecraft:lime_wool
execute if score !placing_direction constants matches 1 run fill ~1 73 ~3 ~2 73 ~3 minecraft:air replace minecraft:lime_wool
execute if score !placing_direction constants matches -1 run fill ~ 73 ~1 ~ 73 ~2 minecraft:air replace minecraft:lime_wool
execute if score !placing_direction constants matches -1 run fill ~3 73 ~1 ~3 73 ~2 minecraft:air replace minecraft:lime_wool

execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:red_wool replace minecraft:lime_wool
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:red_concrete replace minecraft:lime_wool
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 2 run fill ~ 73 ~ ~3 73 ~3 minecraft:red_concrete_powder replace minecraft:lime_wool
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 3 run fill ~ 73 ~ ~3 73 ~3 minecraft:red_terracotta replace minecraft:lime_wool
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 4 run fill ~ 73 ~ ~3 73 ~3 minecraft:redstone_ore replace minecraft:lime_wool
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 5 run fill ~ 73 ~ ~3 73 ~3 minecraft:stripped_crimson_hyphae replace minecraft:lime_wool
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:light_blue_wool replace minecraft:lime_wool
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:light_blue_concrete replace minecraft:lime_wool
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 2 run fill ~ 73 ~ ~3 73 ~3 minecraft:light_blue_concrete_powder replace minecraft:lime_wool
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 3 run fill ~ 73 ~ ~3 73 ~3 minecraft:light_blue_terracotta replace minecraft:lime_wool
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 4 run fill ~ 73 ~ ~3 73 ~3 minecraft:diamond_ore replace minecraft:lime_wool
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 5 run fill ~ 73 ~ ~3 73 ~3 minecraft:stripped_warped_hyphae replace minecraft:lime_wool

execute as @a at @s run playsound block.anvil.land master @s ~ ~ ~ 10
