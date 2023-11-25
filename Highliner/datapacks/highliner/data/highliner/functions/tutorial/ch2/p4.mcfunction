tellraw @a {"translate":"highliner.tutorial.ch2.p4", "color":"yellow", "italic":true}
execute if score !tile_theme constants matches 0 run fill -2 73 -6 1 73 5 minecraft:light_blue_wool replace #highliner:red_tile
execute if score !tile_theme constants matches 1 run fill -2 73 -6 1 73 5 minecraft:light_blue_concrete replace #highliner:red_tile
execute if score !tile_theme constants matches 2 run fill -2 73 -6 1 73 5 minecraft:light_blue_concrete_powder replace #highliner:red_tile
execute if score !tile_theme constants matches 3 run fill -2 73 -6 1 73 5 minecraft:light_blue_terracotta replace #highliner:red_tile
execute if score !tile_theme constants matches 4 run fill -2 73 -6 1 73 5 minecraft:diamond_ore replace #highliner:red_tile
execute if score !tile_theme constants matches 5 run fill -2 73 -6 1 73 5 minecraft:stripped_warped_hyphae replace #highliner:red_tile
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -2
function highliner:tutorial/common/x_particle
