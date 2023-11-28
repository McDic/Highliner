execute store result score !current_length constants run data get storage highliner:saved_matches matches
execute if score !current_length constants <= !max_match_saves constants run return 0
data remove storage highliner:saved_matches matches[0]
function highliner:game/record/pop_front
