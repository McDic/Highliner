scoreboard players set !claimed_current constants 0
scoreboard players set !claimed_opponent constants 0
scoreboard players set !dominated_current constants 0
scoreboard players set !dominated_opponent constants 0

function highliner:game/board/common
execute as @e[type=minecraft:marker,name="board_dfs",scores={current_tile=1..3}] run scoreboard players add !claimed_current constants 1
execute as @e[type=minecraft:marker,name="board_dfs",scores={current_tile=3}] run scoreboard players add !dominated_current constants 1
execute as @e[type=minecraft:marker,name="board_dfs",scores={current_tile=4..6}] run scoreboard players add !claimed_opponent constants 1
execute as @e[type=minecraft:marker,name="board_dfs",scores={current_tile=6}] run scoreboard players add !dominated_opponent constants 1

function highliner:game/get_turn
execute if score !is_red_turn constants matches 1 run scoreboard players operation !claimed_red constants = !claimed_current constants
execute if score !is_red_turn constants matches 1 run scoreboard players operation !claimed_blue constants = !claimed_opponent constants
execute if score !is_red_turn constants matches 1 run scoreboard players operation !dominated_red constants = !dominated_current constants
execute if score !is_red_turn constants matches 1 run scoreboard players operation !dominated_blue constants = !dominated_opponent constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !claimed_blue constants = !claimed_current constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !claimed_red constants = !claimed_opponent constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !dominated_blue constants = !dominated_current constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !dominated_red constants = !dominated_opponent constants

kill @e[type=minecraft:marker,name="board_dfs"]
