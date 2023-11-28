# Destruct lobby
function highliner:lobby/create/nonidle
function highliner:game/board/reset/all

# Scoreboard
scoreboard objectives remove lobbytrigger
scoreboard objectives add lobbytrigger trigger
scoreboard players set !gamemode constants 2
scoreboard players set !current_tutorial_chapter constants -1
scoreboard players set !tutorial_placeable_red constants 0

# Disable x22 temporarily
scoreboard players operation !disable_x22_original constants = !disable_x22 constants
scoreboard players set !disable_x22 constants 1

# Team
team join spectators @a

# Worldborder
worldborder set 132

# Reset board
function highliner:game/board/reset/all
function highliner:game/placing/exit

# Main
function highliner:tutorial/next_chapter
