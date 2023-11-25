function highliner:game/get_turn
execute if score !is_red_turn constants matches 1 run scoreboard players operation !timer_temp constants = !timer_red constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !timer_temp constants = !timer_blue constants
execute if score !is_red_turn constants matches 1 run scoreboard players operation !claimed_temp constants = !claimed_red constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !claimed_temp constants = !claimed_blue constants
execute if score !is_red_turn constants matches 1 run scoreboard players operation !dominated_temp constants = !dominated_red constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !dominated_temp constants = !dominated_blue constants
