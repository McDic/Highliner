# Get x, z remainder 4
execute at @s run function highliner:gps
scoreboard players operation @s gps_x %= !4 constants
scoreboard players operation @s gps_z %= !4 constants

# Adjusting
execute if score @s gps_x matches 3 at @s run tp ~-1 ~ ~
execute if score @s gps_x matches 0 at @s run tp ~-2 ~ ~
execute if score @s gps_x matches 1 at @s run tp ~-3 ~ ~
execute if score @s gps_z matches 3 at @s run tp ~ ~ ~-1
execute if score @s gps_z matches 0 at @s run tp ~ ~ ~-2
execute if score @s gps_z matches 1 at @s run tp ~ ~ ~-3
