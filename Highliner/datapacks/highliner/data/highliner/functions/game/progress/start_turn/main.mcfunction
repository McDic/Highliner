schedule clear highliner:game/progress/start_turn/wait

# Add constructed diff. This is skipped on first `start_turn/main` call.
# skip_save_diff guard is provided because this function is called on the first of the game, where no diff is available.
function highliner:game/board/refresh
function highliner:game/record/diff/flush

# Score calculation and save prev claimed/dominated
function highliner:game/progress/calculate_score/main
scoreboard players operation !prev_claimed_red constants = !claimed_red constants
scoreboard players operation !prev_dominated_red constants = !dominated_red constants
scoreboard players operation !prev_claimed_blue constants = !claimed_blue constants
scoreboard players operation !prev_dominated_blue constants = !dominated_blue constants

# Refresh placing
function highliner:game/placing/init

schedule clear highliner:game/progress/timer/reduce
function highliner:game/progress/timer/reduce

# By doing this, the actual main turn player is shifted.
# It is important to note that main turn player is NOT determined by `!turn constants`.
scoreboard players operation @a[team=!spectators] turn *= !-1 constants
clear @a
execute as @a[team=!spectators] run function highliner:game/items/reset
scoreboard players set !in_turn constants 1
scoreboard players reset @a[team=!spectators] try_surrendered
scoreboard players reset @a[team=!spectators] surrendered
