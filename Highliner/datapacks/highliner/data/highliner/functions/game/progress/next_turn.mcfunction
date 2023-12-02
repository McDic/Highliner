# Fundamental stuffs
clear @a
scoreboard players reset @a try_surrendered
scoreboard players reset @a surrendered
scoreboard players reset @a tried_placing
scoreboard players reset @a rotated
# turn *= -1 is did in `/start_turn`, since I have to refresh the board later
scoreboard players add !turn constants 1
scoreboard players set !in_turn constants 0

# Timer
schedule clear highliner:game/progress/timer/reduce
function highliner:game/progress/timer/update

# If both turns are skipped, just end the game
execute if score !previously_skipped constants matches 1 if score !currently_skipped constants matches 1 run tellraw @a {"translate":"highliner.message.both_skipped","color":"yellow","italic":true}
execute if score !previously_skipped constants matches 1 if score !currently_skipped constants matches 1 run function highliner:game/finalize/determine
execute if score !previously_skipped constants matches 1 if score !currently_skipped constants matches 1 run return 0

# Otherwise, go to the next step
execute if score !turn constants <= !max_turn constants if score !instant_placing constants matches 0 run schedule function highliner:game/progress/start_turn/entry 2s
execute if score !turn constants > !max_turn constants if score !instant_placing constants matches 0 run schedule function highliner:game/finalize/determine 2s append
execute if score !turn constants <= !max_turn constants if score !instant_placing constants matches 1 run function highliner:game/progress/start_turn/entry
execute if score !turn constants > !max_turn constants if score !instant_placing constants matches 1 run function highliner:game/finalize/determine

# Prev skip = current skip
scoreboard players operation !previously_skipped constants = !currently_skipped constants
