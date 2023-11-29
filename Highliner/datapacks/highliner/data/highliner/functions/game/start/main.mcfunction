execute store result score !startable constants run function highliner:game/start/main_inner
execute if score !startable constants matches 0 run return 0
function highliner:game/record/init
scoreboard players set !skip_save_diff constants 1
function highliner:game/progress/next_turn
