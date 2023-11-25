execute at @s run tp @s ^ ^ ^0.5
execute at @s run function highliner:gps
execute if score @s gps_y matches 72.. at @s run function highliner:game/placing/raycast/recursive_move
