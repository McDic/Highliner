# Exit placing
function highliner:game/placing/exit

# Scoreboard
scoreboard objectives remove turn
scoreboard objectives add turn dummy
scoreboard players set !gamemode constants 0
scoreboard players operation !instant_placing constants = !instant_placing_original constants

# Reset
function highliner:game/finalize/reset
function highliner:lobby/refresh_displays/all
