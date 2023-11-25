function highliner:game/board/reset/all
tellraw @a {"translate":"highliner.tutorial.ch4.p4", "color":"yellow", "italic":true}

scoreboard players set !tutorial_placeable_red constants 1
scoreboard players set !placing_direction constants 1
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -10
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -10 73 6
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] 6 73 6
function highliner:tutorial/common/place

scoreboard players set !tutorial_placeable_red constants 1
scoreboard players set !placing_direction constants -1
tp @e[type=minecraft:marker,name="tutorial_placer"] 6 73 -2
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -10 73 -2
function highliner:tutorial/common/place

scoreboard players set !tutorial_placeable_red constants 0
scoreboard players set !placing_direction constants 1
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -14
function highliner:tutorial/common/place

scoreboard players set !tutorial_placeable_red constants 0
scoreboard players set !placing_direction constants -1
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -2
function highliner:tutorial/common/place
