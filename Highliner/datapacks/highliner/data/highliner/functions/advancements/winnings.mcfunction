# Simple win counts
execute as @a[team=!spectators] if score @s wincount matches 1.. run advancement grant @s until highliner:win/1
execute as @a[team=!spectators] if score @s wincount matches 20.. run advancement grant @s until highliner:win/20

# win/absolutely
function highliner:game/get_turn
execute if score !is_red_turn constants matches 1 run scoreboard players operation !my_score constants = !claimed_red constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !my_score constants = !claimed_blue constants
execute if score !is_red_turn constants matches 1 run scoreboard players operation !opponent_score constants = !claimed_blue constants
execute unless score !is_red_turn constants matches 1 run scoreboard players operation !opponent_score constants = !claimed_red constants
scoreboard players operation !opponent_100 constants = !opponent_score constants
scoreboard players add !opponent_100 constants 100
scoreboard players operation !opponent_1.5x constants = !opponent_score constants
scoreboard players operation !opponent_1.5x constants *= !3 constants
scoreboard players operation !opponent_1.5x constants /= !2 constants
execute if score !my_score constants >= !opponent_100 constants if score !my_score constants >= !opponent_1.5x constants if score !is_red_turn constants matches 1 run advancement grant @a[team=redteam] until highliner:win/absolutely
execute if score !my_score constants >= !opponent_100 constants if score !my_score constants >= !opponent_1.5x constants unless score !is_red_turn constants matches 1 run advancement grant @a[team=blueteam] until highliner:win/absolutely
