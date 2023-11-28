execute at @s run tp @s ^ ^ ^0.5
execute at @s run function highliner:gps
execute if score @s gps_x matches -66..65 if score @s gps_z matches -66..65 if score @s gps_y matches 73.. at @s run function highliner:game/placing/raycast/recursive_move
