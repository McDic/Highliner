tellraw @a {"translate":"highliner.tutorial.ch2.p4", "color":"yellow", "italic":true}
fill -2 73 -6 1 73 5 minecraft:light_blue_wool
scoreboard players remove !tile_theme constants 1
function highliner:settings/tile_theme
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -2
function highliner:tutorial/common/x_particle
