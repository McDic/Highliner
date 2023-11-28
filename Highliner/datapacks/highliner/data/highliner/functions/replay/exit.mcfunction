# Exit placing
function highliner:game/placing/exit

# Tag
tag @a remove replayer

# Scoreboard
scoreboard objectives remove turn
scoreboard objectives add turn dummy
scoreboard players set !gamemode constants 0
scoreboard players operation !instant_placing constants = !instant_placing_original constants

# Reset
function highliner:game/finalize/reset
