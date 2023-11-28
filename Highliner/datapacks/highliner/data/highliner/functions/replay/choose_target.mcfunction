execute store result score !stored_saves constants run data get storage highliner:saved_matches matches
execute if score !stored_saves constants matches 1 run tellraw @s {"translate":"highliner.message.replay.only_one_save","color":"yellow","italic":true}

scoreboard players remove !selected_replay_index constants 1
function highliner:replay/get_target_index
function highliner:lobby/refresh_displays/all
