function highliner:game/board/reset/applied
scoreboard players set !claimed_current constants 0
scoreboard players set !claimed_opponent constants 0
scoreboard players set !dominated_current constants 0
scoreboard players set !dominated_opponent constants 0
execute positioned -2 73 -2 run function highliner:game/board/apply/all_tiles {apply_func: "highliner:game/progress/calculate_score/individual"}

function highliner:game/get_turn
execute if score !is_red_turn constants matches 1 run scoreboard players operation !claimed_red constants = !claimed_current constants
execute if score !is_red_turn constants matches 1 run scoreboard players operation !claimed_blue constants = !claimed_opponent constants
execute if score !is_red_turn constants matches 1 run scoreboard players operation !dominated_red constants = !dominated_current constants
execute if score !is_red_turn constants matches 1 run scoreboard players operation !dominated_blue constants = !dominated_opponent constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !claimed_blue constants = !claimed_current constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !claimed_red constants = !claimed_opponent constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !dominated_blue constants = !dominated_current constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !dominated_red constants = !dominated_opponent constants

# Give advancements whenever it works
execute if score !gamemode constants matches 1 run function highliner:advancements/score
