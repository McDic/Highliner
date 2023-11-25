# Individual filling, executes on empty or opponent normal/bridge tiles.
execute if block ~ 69 ~ minecraft:bedrock run return 0
execute store result score !current_tile constants run function highliner:game/board/check/current_tile
execute if score !current_tile constants matches 1..3 run return 0
execute if score !current_tile constants matches 6 run return 0

# Assuming `get_turn` is already happened and cached
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:magenta_wool
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:magenta_concrete
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 2 run fill ~ 73 ~ ~3 73 ~3 minecraft:magenta_concrete_powder
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 3 run fill ~ 73 ~ ~3 73 ~3 minecraft:magenta_terracotta
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 4 run fill ~ 73 ~ ~3 73 ~3 minecraft:deepslate_redstone_ore
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 5 run fill ~ 73 ~ ~3 73 ~3 minecraft:crimson_hyphae
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 0 run fill ~ 73 ~ ~3 73 ~3 minecraft:blue_wool
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 1 run fill ~ 73 ~ ~3 73 ~3 minecraft:blue_concrete
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 2 run fill ~ 73 ~ ~3 73 ~3 minecraft:blue_concrete_powder
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 3 run fill ~ 73 ~ ~3 73 ~3 minecraft:blue_terracotta
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 4 run fill ~ 73 ~ ~3 73 ~3 minecraft:deepslate_diamond_ore
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 5 run fill ~ 73 ~ ~3 73 ~3 minecraft:warped_hyphae
scoreboard players set !domination_filled constants 1
