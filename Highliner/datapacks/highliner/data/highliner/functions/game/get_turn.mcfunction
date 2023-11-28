scoreboard players set !is_red_turn constants 0
execute if score !gamemode constants matches 1 if entity @p[team=redteam,scores={turn=1}] run scoreboard players set !is_red_turn constants 1
execute if score !gamemode constants matches 1 if entity @p[team=blueteam,scores={turn=-1}] run scoreboard players set !is_red_turn constants 1
execute if score !gamemode constants matches 2 run scoreboard players operation !is_red_turn constants = !tutorial_placeable_red constants
execute if score !gamemode constants matches 3 run scoreboard players operation !is_red_turn constants = !replay_is_red_placed constants
