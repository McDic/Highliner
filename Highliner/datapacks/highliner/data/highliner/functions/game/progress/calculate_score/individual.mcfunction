function highliner:game/board/clone/single
execute store result score !current_tile constants run function highliner:game/board/check/current_tile
execute if score !current_tile constants matches 1..3 run scoreboard players add !claimed_current constants 1
execute if score !current_tile constants matches 3 run scoreboard players add !dominated_current constants 1
execute if score !current_tile constants matches 4..6 run scoreboard players add !claimed_opponent constants 1
execute if score !current_tile constants matches 6 run scoreboard players add !dominated_opponent constants 1
