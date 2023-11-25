function highliner:game/get_turn
execute if score !is_red_turn constants matches 1 run scoreboard players operation !timer_red constants = !timer_temp constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !timer_blue constants = !timer_temp constants
