# Assume this function is executed by slime
setblock ~ 73 ~ minecraft:air
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:red_wool"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 1 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:red_concrete"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 2 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:red_concrete_powder"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 3 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:red_terracotta"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 4 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:redstone_ore"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 1 if score !tile_theme constants matches 5 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:stripped_crimson_hyphae"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 0 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:light_blue_wool"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 1 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:light_blue_concrete"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 2 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:light_blue_concrete_powder"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 3 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:light_blue_terracotta"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 4 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:diamond_ore"}, Time: 0, DropItem: false}
execute if score !is_red_turn constants matches 0 if score !tile_theme constants matches 5 run summon minecraft:falling_block ~ 80 ~ {BlockState: {Name: "minecraft:stripped_warped_hyphae"}, Time: 0, DropItem: false}
