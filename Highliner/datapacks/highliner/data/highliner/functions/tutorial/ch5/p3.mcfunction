tellraw @a {"translate":"highliner.tutorial.ch5.p3", "color":"yellow", "italic":true}

scoreboard players set !tutorial_placeable_red constants 1
scoreboard players set !placing_direction constants 1
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -2
function highliner:tutorial/common/placing_preview

function highliner:tutorial/common/x_particle
