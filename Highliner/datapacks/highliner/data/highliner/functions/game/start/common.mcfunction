# Worldborder
worldborder set 132 5

# Clear players
clear @a
gamemode spectator @a[team=spectators]

# Disable triggers
scoreboard objectives remove lobbytrigger_v2
scoreboard objectives add lobbytrigger_v2 dummy

# Tell settings
function highliner:settings/tell

# Scores
scoreboard players set !gamemode constants 1
scoreboard objectives remove turn
scoreboard objectives add turn dummy

# Playsound
execute as @a at @s run playsound minecraft:entity.player.levelup master @s

# Title
title @a times 0s 2s 2s

# Change lobby
function highliner:lobby/create/nonidle

# Bossbar
function highliner:game/bossbar/init
