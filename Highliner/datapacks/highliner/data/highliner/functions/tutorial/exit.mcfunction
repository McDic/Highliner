tellraw @a {"translate":"highliner.tutorial.exit", "color":"yellow", "italic":true}
kill @e[type=minecraft:marker,name="tutorial_placer"]
function highliner:game/placing/exit
schedule clear highliner:tutorial/main

# Restore settings
scoreboard players operation !disable_x22 constants = !disable_x22_original constants
scoreboard players operation !instant_placing constants = !instant_placing_original constants

# Common reset
advancement grant @a until highliner:attend_tutorial
function highliner:game/finalize/reset
