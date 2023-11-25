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

execute if score !turn constants <= !max_turn constants run schedule function highliner:game/progress/start_turn/entry 2s
execute if score !turn constants > !max_turn constants run schedule function highliner:game/finalize/determine 2s append
