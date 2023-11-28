# Get `highliner:saved_matches[!selected_replay_index].match_id`, stored on `!target_replay_match_id_0~3`.
function highliner:replay/get_target_index
data modify storage highliner:temp_storage temp_args set value {}
execute store result storage highliner:temp_storage temp_args.index int 1 run scoreboard players get !target_replay_index constants
execute unless score !stored_saves constants matches ..0 run function highliner:game/record/get_match_id_inner with storage highliner:temp_storage temp_args
