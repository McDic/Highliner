execute store result score !startable constants run function highliner:game/start/check/common
execute unless score !startable constants matches 1 run return 0

# Worldborder
worldborder set 132 5

# Clear players
clear @a
gamemode spectator @a[team=spectators]

# Disable triggers
scoreboard objectives remove lobbytrigger_v2
scoreboard objectives add lobbytrigger_v2 dummy

# Scores
scoreboard players set !gamemode constants 1
scoreboard players set !turn constants 0
scoreboard objectives remove turn
scoreboard objectives add turn dummy
scoreboard players set @p[team=redteam] turn 1
scoreboard players set @p[team=blueteam] turn 1
execute unless score !forced_first_player constants matches 1..2 run scoreboard players set @r[scores={turn=1}] turn -1
execute if score !forced_first_player constants matches 1 run scoreboard players set @p[team=redteam,scores={turn=1}] turn -1
execute if score !forced_first_player constants matches 2 run scoreboard players set @p[team=blueteam,scores={turn=1}] turn -1
scoreboard players operation !timer_red constants = !gamespeed_maxtime constants
scoreboard players operation !timer_blue constants = !gamespeed_maxtime constants
scoreboard players operation !timer_current constants = !gamespeed_maxtime constants

# Tell settings
function highliner:settings/tell

# Playsound
execute as @a at @s run playsound minecraft:entity.player.levelup master @s

# Title
title @a times 0s 2s 2s

# Change lobby
function highliner:lobby/create/nonidle

# Bossbar
function highliner:game/bossbar/init

# Board
function highliner:game/board/reset/all

# Return 1 on successful
return 1