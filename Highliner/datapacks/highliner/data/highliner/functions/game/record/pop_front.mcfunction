execute store result score !current_length constants run data get storage highliner:saved_matches matches
execute if score !current_length constants <= !max_match_saves constants run return 0

execute store result score !temp_match_id_0 constants run data get storage highliner:saved_matches matches[0].match_id[0]
execute store result score !temp_match_id_1 constants run data get storage highliner:saved_matches matches[0].match_id[1]
execute store result score !temp_match_id_2 constants run data get storage highliner:saved_matches matches[0].match_id[2]
execute store result score !temp_match_id_3 constants run data get storage highliner:saved_matches matches[0].match_id[3]
tellraw @a [{"text":"[DEBUG] Match "},{"score":{"name":"!temp_match_id_0","objective":"constants"}},{"text":"-"},{"score":{"name":"!temp_match_id_0","objective":"constants"}},{"text":"-"},{"score":{"name":"!temp_match_id_0","objective":"constants"}},{"text":"-"},{"score":{"name":"!temp_match_id_0","objective":"constants"}},{"text":" is deleted."}]

data remove storage highliner:saved_matches matches[0]
function highliner:game/record/pop_front
