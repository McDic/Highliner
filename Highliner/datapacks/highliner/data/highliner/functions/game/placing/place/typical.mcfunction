# Assume this function is executed by slime
setblock ~ 73 ~ minecraft:air

execute if score !instant_placing constants matches 0 if score !gamemode constants matches 3 run tellraw @a {"text":"WARNING; INSTANT PLACING IS NOT ACIVATED IN REPLAY MODE; SOMETHING MUST BE WRONG.","color":"yellow","bold":true}
execute if score !instant_placing constants matches 0 if score !gamemode constants matches 3 run scoreboard players set !instant_placing constants 1

execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 0 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:red_wool"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 1 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:red_concrete"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 2 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:red_concrete_powder"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 3 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:red_terracotta"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 4 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:redstone_ore"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 5 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:stripped_crimson_hyphae"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 6 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:redstone_block"}, Time: 0, DropItem: false}

execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 0 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:red_wool
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 1 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:red_concrete
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 2 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:red_concrete_powder
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 3 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:red_terracotta
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 4 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:redstone_ore
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 5 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:stripped_crimson_hyphae
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 6 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:redstone_block

execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 0 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:light_blue_wool"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 1 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:light_blue_concrete"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 2 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:light_blue_concrete_powder"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 3 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:light_blue_terracotta"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 4 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:diamond_ore"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 5 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:stripped_warped_hyphae"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 6 if score !instant_placing constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:diamond_block"}, Time: 0, DropItem: false}

execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 0 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:light_blue_wool
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 1 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:light_blue_concrete
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 2 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:light_blue_concrete_powder
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 3 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:light_blue_terracotta
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 4 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:diamond_ore
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 5 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:stripped_warped_hyphae
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 6 if score !instant_placing constants matches 1 run setblock ~ 73 ~ minecraft:diamond_block
