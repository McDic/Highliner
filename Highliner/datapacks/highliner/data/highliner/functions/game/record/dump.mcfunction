# Dump the current match to the record, and then remove too old records.
# If current record is empty, then do not save the progress.
execute store result score !progressed_turns constants run data get storage highliner:current_match diffs
execute if score !progressed_turns constants matches ..0 run return 0
data modify storage highliner:saved_matches matches append from storage highliner:current_match

execute store result score !target_replay_match_id_0 constants run data get storage highliner:current_match match_id[0]
execute store result score !target_replay_match_id_1 constants run data get storage highliner:current_match match_id[1]
execute store result score !target_replay_match_id_2 constants run data get storage highliner:current_match match_id[2]
execute store result score !target_replay_match_id_3 constants run data get storage highliner:current_match match_id[3]
tellraw @a {"translate":"highliner.message.announce_match_id","color":"yellow","with":[{"score":{"name":"!target_replay_match_id_0","objective":"constants"}},{"score":{"name":"!target_replay_match_id_1","objective":"constants"}},{"score":{"name":"!target_replay_match_id_2","objective":"constants"}},{"score":{"name":"!target_replay_match_id_3","objective":"constants"}}]}

function highliner:game/record/pop_front
function highliner:game/record/init
