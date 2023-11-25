execute store result score @s gps_x run data get entity @s Pos[0] 1
execute store result score @s gps_y run data get entity @s Pos[1] 1
execute store result score @s gps_z run data get entity @s Pos[2] 1
# tellraw @a ["","(",{"score":{"name":"@s","objective":"gps_x"}},", ",{"score":{"name":"@s","objective":"gps_z"}},")"]
