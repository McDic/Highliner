# Common process
execute store result score !startable constants run function highliner:game/start/check/common
execute unless score !startable constants matches 1 run return 0
function highliner:game/start/common

# Scores
scoreboard players set !turn constants 0
scoreboard players set @p[team=redteam] turn 1
scoreboard players set @p[team=blueteam] turn 1
execute unless score !forced_first_player constants matches 1..2 run scoreboard players set @r[scores={turn=1}] turn -1
execute if score !forced_first_player constants matches 1 run scoreboard players set @p[team=redteam,scores={turn=1}] turn -1
execute if score !forced_first_player constants matches 2 run scoreboard players set @p[team=blueteam,scores={turn=1}] turn -1
scoreboard players operation !timer_red constants = !gamespeed_maxtime constants
scoreboard players operation !timer_blue constants = !gamespeed_maxtime constants

# Board
function highliner:game/board/reset/all

# Create record and go
function highliner:game/record/init
scoreboard players set !skip_save_diff constants 1
function highliner:game/progress/next_turn
