tellraw @a {"translate":"highliner.tutorial.exit", "color":"yellow", "italic":true}
kill @e[type=minecraft:marker,name="tutorial_placer"]
function highliner:game/placing/exit
schedule clear highliner:tutorial/main
execute if score !disable_x22_original constants matches 0..1 run scoreboard players operation !disable_x22 constants = !disable_x22_original constants
function highliner:game/finalize/reset
scoreboard players set !gamemode constants 0
