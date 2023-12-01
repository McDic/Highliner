# Destruct lobby
function highliner:lobby/create/nonidle
function highliner:game/board/reset/all

# Scoreboard
scoreboard objectives remove lobbytrigger_v2
scoreboard objectives add lobbytrigger_v2 dummy
scoreboard players set !gamemode constants 2
scoreboard players set !current_tutorial_chapter constants -1
scoreboard players set !tutorial_placeable_red constants 0

# Change some settings temporarily
scoreboard players operation !disable_x22_original constants = !disable_x22 constants
scoreboard players set !disable_x22 constants 1
scoreboard players operation !instant_placing_original constants = !instant_placing constants
scoreboard players set !instant_placing constants 0

# Team
team join spectators @a

# Worldborder
worldborder set 132

# Reset board
function highliner:game/board/reset/all
function highliner:game/placing/exit

# Main
function highliner:tutorial/next_chapter
