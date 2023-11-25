tellraw @a {"translate":"highliner.tutorial.ch3.p6", "color":"yellow", "italic":true}

# -2 73 50,38,26,-30,-42,-54, blue z

scoreboard players set !tutorial_placeable_red constants 0
scoreboard players set !placing_direction constants -1
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 50
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 38
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 26
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -30
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -42
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -2 73 -54
function highliner:tutorial/common/place

# -54,-42,-30,50,38,26 73 -2 blue x

scoreboard players set !tutorial_placeable_red constants 0
scoreboard players set !placing_direction constants 1
tp @e[type=minecraft:marker,name="tutorial_placer"] -54 73 -2
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -42 73 -2
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] -30 73 -2
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] 50 73 -2
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] 38 73 -2
function highliner:tutorial/common/place
tp @e[type=minecraft:marker,name="tutorial_placer"] 26 73 -2
function highliner:tutorial/common/place

function highliner:tutorial/common/x_particle
