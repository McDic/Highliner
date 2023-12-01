# Load match to the `highliner:current_match`, and if there is any error, return earlier.
function highliner:game/record/get_match_id
data modify storage highliner:temp_storage temp_args set value {}
execute store result storage highliner:temp_storage temp_args.index int 1 run scoreboard players get !target_replay_index constants
execute unless score !stored_saves constants matches 1.. run tellraw @a {"translate":"highliner.error.replay.not_available","color":"yellow","italic":true}
execute unless score !stored_saves constants matches 1.. run return 0
function highliner:game/record/load_match with storage highliner:temp_storage temp_args
execute store result score !saved_x22_settings constants run data get storage highliner:current_match settings.disable_x22
execute unless score !saved_x22_settings constants = !disable_x22 constants if score !disable_x22 constants matches 0 run tellraw @a {"translate":"highliner.error.replay.x22.need_disable","color":"yellow","italic":true}
execute unless score !saved_x22_settings constants = !disable_x22 constants unless score !disable_x22 constants matches 0 run tellraw @a {"translate":"highliner.error.replay.x22.need_enable","color":"yellow","italic":true}
execute unless score !saved_x22_settings constants = !disable_x22 constants run return 0
execute store result score !saved_max_turn constants run data get storage highliner:current_match diffs
execute unless score !saved_max_turn constants matches 1.. run tellraw @a {"translate":"highliner.error.replay.empty_match","color":"yellow","italic":true}
execute unless score !saved_max_turn constants matches 1.. run return 0

# Worldborder
worldborder set 132 5

# Clear players
clear @a

# Disable triggers
scoreboard objectives remove lobbytrigger_v2
scoreboard objectives add lobbytrigger_v2 dummy

# Lobby
function highliner:lobby/lobbytrigger/forget

# Tag
tag @a remove replayer
tag @s add replayer

# Scores
scoreboard players set !gamemode constants 3
scoreboard players set !turn constants 0
scoreboard players set !replay_jump_speed constants 0
scoreboard players operation !instant_placing_original constants = !instant_placing constants
scoreboard players set !instant_placing constants 1
scoreboard objectives remove turn
scoreboard objectives add turn dummy
scoreboard players set !moving_turn_in_progress constants 0

# Playsound
execute as @a at @s run playsound minecraft:entity.player.levelup master @s

# Title
title @a times 0s 2s 2s

# Bossbar
function highliner:game/bossbar/init

# Placing
execute positioned 0 72 0 run function highliner:game/placing/init

# Board
function highliner:game/board/reset/all
function highliner:replay/progress/forward
