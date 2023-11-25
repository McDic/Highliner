tellraw @a {"translate":"highliner.tutorial.ch3.p3", "color":"yellow", "italic":true}

scoreboard players set !tutorial_placeable_red constants 0
scoreboard players set !placing_direction constants 1
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -22
function highliner:tutorial/common/place
