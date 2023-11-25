# Tile themes
# 0: wool
# 1: concrete
# 2: concrete powder
# 3: terracotta
# 4: ore (DISABLED)
# 5: hyphae

scoreboard players add !tile_theme constants 1
execute if score !tile_theme constants matches 4 run scoreboard players add !tile_theme constants 1
execute if score !tile_theme constants matches 6.. run scoreboard players set !tile_theme constants 0

setblock -1 90 1 minecraft:oak_wall_sign[facing=south]{front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.theme.l2","clickEvent":{"action":"run_command","value":"trigger lobbytrigger set 10"},"color":"yellow","bold":true}', '{"text":""}', '{"text":""}']}} destroy

execute if score !tile_theme constants matches 0 run fill -58 73 -58 57 73 57 minecraft:red_wool replace #highliner:red_tile
execute if score !tile_theme constants matches 1 run fill -58 73 -58 57 73 57 minecraft:red_concrete replace #highliner:red_tile
execute if score !tile_theme constants matches 2 run fill -58 73 -58 57 73 57 minecraft:red_concrete_powder replace #highliner:red_tile
execute if score !tile_theme constants matches 3 run fill -58 73 -58 57 73 57 minecraft:red_terracotta replace #highliner:red_tile
execute if score !tile_theme constants matches 4 run fill -58 73 -58 57 73 57 minecraft:redstone_ore replace #highliner:red_tile
execute if score !tile_theme constants matches 5 run fill -58 73 -58 57 73 57 minecraft:stripped_crimson_hyphae replace #highliner:red_tile

execute if score !tile_theme constants matches 0 run fill -58 73 -58 57 73 57 minecraft:light_blue_wool replace #highliner:blue_tile
execute if score !tile_theme constants matches 1 run fill -58 73 -58 57 73 57 minecraft:light_blue_concrete replace #highliner:blue_tile
execute if score !tile_theme constants matches 2 run fill -58 73 -58 57 73 57 minecraft:light_blue_concrete_powder replace #highliner:blue_tile
execute if score !tile_theme constants matches 3 run fill -58 73 -58 57 73 57 minecraft:light_blue_terracotta replace #highliner:blue_tile
execute if score !tile_theme constants matches 4 run fill -58 73 -58 57 73 57 minecraft:diamond_ore replace #highliner:blue_tile
execute if score !tile_theme constants matches 5 run fill -58 73 -58 57 73 57 minecraft:stripped_warped_hyphae replace #highliner:blue_tile

execute if score !tile_theme constants matches 0 run fill -58 73 -58 57 73 57 minecraft:magenta_wool replace #highliner:red_dominated
execute if score !tile_theme constants matches 1 run fill -58 73 -58 57 73 57 minecraft:magenta_concrete replace #highliner:red_dominated
execute if score !tile_theme constants matches 2 run fill -58 73 -58 57 73 57 minecraft:magenta_concrete_powder replace #highliner:red_dominated
execute if score !tile_theme constants matches 3 run fill -58 73 -58 57 73 57 minecraft:magenta_terracotta replace #highliner:red_dominated
execute if score !tile_theme constants matches 4 run fill -58 73 -58 57 73 57 minecraft:deepslate_redstone_ore replace #highliner:red_dominated
execute if score !tile_theme constants matches 5 run fill -58 73 -58 57 73 57 minecraft:crimson_hyphae replace #highliner:red_dominated

execute if score !tile_theme constants matches 0 run fill -58 73 -58 57 73 57 minecraft:blue_wool replace #highliner:blue_dominated
execute if score !tile_theme constants matches 1 run fill -58 73 -58 57 73 57 minecraft:blue_concrete replace #highliner:blue_dominated
execute if score !tile_theme constants matches 2 run fill -58 73 -58 57 73 57 minecraft:blue_concrete_powder replace #highliner:blue_dominated
execute if score !tile_theme constants matches 3 run fill -58 73 -58 57 73 57 minecraft:blue_terracotta replace #highliner:blue_dominated
execute if score !tile_theme constants matches 4 run fill -58 73 -58 57 73 57 minecraft:deepslate_diamond_ore replace #highliner:blue_dominated
execute if score !tile_theme constants matches 5 run fill -58 73 -58 57 73 57 minecraft:warped_hyphae replace #highliner:blue_dominated

function highliner:lobby/refresh_signs/tile_theme
