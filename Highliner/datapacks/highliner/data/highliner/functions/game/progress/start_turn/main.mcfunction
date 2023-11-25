schedule clear highliner:game/progress/start_turn/wait

function highliner:game/board/refresh
function highliner:game/progress/calculate_score/main
function highliner:game/placing/init

schedule clear highliner:game/progress/timer/reduce
function highliner:game/progress/timer/reduce

scoreboard players operation @a[team=!spectators] turn *= !-1 constants
clear @a
execute as @a[team=!spectators] run function highliner:game/reset_items
scoreboard players set !in_turn constants 1
scoreboard players reset @a[team=!spectators] try_surrendered
scoreboard players reset @a[team=!spectators] surrendered
