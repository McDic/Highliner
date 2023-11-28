# Worldborder (132 max)
worldborder center 0.0 0.0
worldborder set 20 1
worldborder warning distance 0

# Scoreboard
scoreboard objectives remove turn
scoreboard objectives add turn dummy
scoreboard players set !gamemode constants 0

# Bottom
function highliner:game/board/reset/bottom

# Schedule and timer
schedule clear highliner:game/progress/timer/reduce

# Team
team empty redteam
team empty blueteam
team join spectators @a[team=!spectators]

# Lobby
function highliner:lobby/create/idle
tp @a 0 95 0
gamemode adventure @a[gamemode=!adventure]

# Items
execute as @a run function highliner:game/reset_items

# Bossbar
function highliner:game/bossbar/clear
