tellraw @a {"translate":"highliner.tutorial.exit", "color":"yellow", "italic":true}
kill @e[type=minecraft:marker,name="tutorial_placer"]
function highliner:game/placing/exit
schedule clear highliner:tutorial/main
function highliner:game/finalize/reset
scoreboard players set !gamemode constants 0
