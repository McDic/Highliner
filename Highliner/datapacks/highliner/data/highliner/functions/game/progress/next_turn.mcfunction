# Add constructed diff. This is skipped on first `next_turn` call.
# skip_save_diff guard is provided because `next_turn` is called on the first of the game, where no diff is available.
execute unless score !skip_save_diff constants matches 1 if score !instant_placing constants matches 0 run schedule function highliner:game/record/diff/flush 1.9s replace
execute unless score !skip_save_diff constants matches 1 if score !instant_placing constants matches 1 run function highliner:game/record/diff/flush
scoreboard players set !skip_save_diff constants 0

# Fundamental stuffs
clear @a
scoreboard players reset @a try_surrendered
scoreboard players reset @a surrendered
scoreboard players reset @a tried_placing
scoreboard players reset @a rotated
# turn *= -1 is did in start_turn, since I have to refresh the board
scoreboard players add !turn constants 1
scoreboard players set !in_turn constants 0

# Timer
schedule clear highliner:game/progress/timer/reduce
function highliner:game/progress/timer/update

# Start new turn
execute if score !turn constants <= !max_turn constants if score !instant_placing constants matches 0 run schedule function highliner:game/progress/start_turn/entry 2s
execute if score !turn constants > !max_turn constants if score !instant_placing constants matches 0 run schedule function highliner:game/finalize/determine 2s append
execute if score !turn constants <= !max_turn constants if score !instant_placing constants matches 1 run function highliner:game/progress/start_turn/entry
execute if score !turn constants > !max_turn constants if score !instant_placing constants matches 1 run function highliner:game/finalize/determine
