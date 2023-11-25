tellraw @a {"translate":"highliner.tutorial.ch3.p1", "color":"yellow", "italic":true}

# INNER RED

scoreboard players set !tutorial_placeable_red constants 1
scoreboard players set !placing_direction constants -1
tp @e[type=minecraft:marker,name="tutorial_placer"] -10 73 -2
function highliner:tutorial/common/place

scoreboard players set !tutorial_placeable_red constants 1
scoreboard players set !placing_direction constants -1
tp @e[type=minecraft:marker,name="tutorial_placer"] 6 73 -2
function highliner:tutorial/common/place

scoreboard players set !tutorial_placeable_red constants 1
scoreboard players set !placing_direction constants 1
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -10
function highliner:tutorial/common/place

# INNER BLUE

scoreboard players set !tutorial_placeable_red constants 0
scoreboard players set !placing_direction constants -1
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -2
function highliner:tutorial/common/place

# OUTER BLUE

scoreboard players set !tutorial_placeable_red constants 0
scoreboard players set !placing_direction constants -1

tp @e[type=minecraft:marker,name="tutorial_placer"] -22 73 10
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -22 73 -2
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -22 73 -14
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] 18 73 10
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] 18 73 -2
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] 18 73 -14
function highliner:tutorial/common/place

scoreboard players set !tutorial_placeable_red constants 0
scoreboard players set !placing_direction constants 1

tp @e[type=minecraft:marker,name="tutorial_placer"] 10 73 -22
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -14 73 -22
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -14 73 18
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 18
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] 10 73 18
function highliner:tutorial/common/place
