# Destruct lobby
function highliner:lobby/create_nonidle
function highliner:game/board/reset/all

# Scoreboard
scoreboard objectives remove lobbytrigger
scoreboard objectives add lobbytrigger trigger
scoreboard players set !gamemode constants 2
scoreboard players set !current_tutorial_chapter constants -1
scoreboard players set !tutorial_placeable_red constants 0

# Team
team join spectators @a

# Worldborder
worldborder set 132

# Reset board
function highliner:game/board/reset/all
function highliner:game/placing/exit

# Main
function highliner:tutorial/next_chapter
