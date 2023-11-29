# Check
execute store result score !startable constants run function highliner:game/start/check/from_replay
execute unless score !startable constants matches 1 run return 0

# Get turn and do common process
function highliner:game/get_turn
scoreboard players operation !replay_last_red_turn constants = !is_red_turn constants
function highliner:game/start/common

# Scores
scoreboard players set @p[team=redteam] turn 1
scoreboard players set @p[team=blueteam] turn 1
execute unless score !forced_first_player constants matches 1..2 if score !replay_last_red_turn constants matches 0 run scoreboard players set @p[team=redteam,scores={turn=1}] turn -1
execute unless score !forced_first_player constants matches 1..2 if score !replay_last_red_turn constants matches 1 run scoreboard players set @p[team=blueteam,scores={turn=1}] turn -1
execute if score !forced_first_player constants matches 1 run scoreboard players set @p[team=redteam,scores={turn=1}] turn -1
execute if score !forced_first_player constants matches 2 run scoreboard players set @p[team=blueteam,scores={turn=1}] turn -1
execute if score !timer_red constants >= !gamespeed_maxtime constants run tellraw @a[team=redteam] {"translate":"highliner.message.replay.timer_truncated","italic":true,"color":"yellow"}
scoreboard players operation !timer_red constants < !gamespeed_maxtime constants
execute if score !timer_blue constants >= !gamespeed_maxtime constants run tellraw @a[team=redteam] {"translate":"highliner.message.replay.timer_truncated","italic":true,"color":"yellow"}
scoreboard players operation !timer_blue constants < !gamespeed_maxtime constants
scoreboard players operation !instant_placing constants = !instant_placing_original constants

# Just update a match id, remove all further diffs and go
function highliner:game/record/assign_match_id
data modify storage highliner:temp_storage temp_args set value {}
execute store result storage highliner:temp_storage temp_args.index int 1 run scoreboard players get !turn constants
function highliner:game/record/remove_futures with storage highliner:temp_storage temp_args
scoreboard players set !skip_save_diff constants 1
function highliner:game/progress/next_turn
