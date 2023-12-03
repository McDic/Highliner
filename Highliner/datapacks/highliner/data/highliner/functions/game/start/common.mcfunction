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
scoreboard objectives remove thinking_time
scoreboard objectives add thinking_time dummy
scoreboard players set !previously_skipped constants 0
scoreboard players set !placing_direction constants 1
scoreboard players set !prev_claimed_red constants 0
scoreboard players set !prev_claimed_blue constants 0
scoreboard players set !prev_dominated_red constants 0
scoreboard players set !prev_dominated_blue constants 0

# Playsound
execute as @a at @s run playsound minecraft:entity.player.levelup master @s

# Title
title @a times 0s 2s 2s

# Change lobby
function highliner:lobby/create/nonidle

# Bossbar
function highliner:game/bossbar/init

# Advancement
advancement grant @a[team=!spectators] until highliner:start_match
