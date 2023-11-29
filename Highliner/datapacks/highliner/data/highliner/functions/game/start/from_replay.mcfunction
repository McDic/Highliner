execute store result score !startable constants run function highliner:game/start/check/from_replay
execute if score !startable constants matches 0 run return 0

# The match is already loaded, so no need to do regarding `highliner:current_match`.

scoreboard players set !skip_save_diff constants 1
function highliner:game/progress/next_turn
