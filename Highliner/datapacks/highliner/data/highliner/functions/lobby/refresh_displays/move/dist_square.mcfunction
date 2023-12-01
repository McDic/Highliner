function highliner:utils/gps
scoreboard players operation !temp_x constants = @s gps_x
scoreboard players operation !temp_y constants = @s gps_y
scoreboard players operation !temp_z constants = @s gps_z
scoreboard players remove !temp_y constants 90
scoreboard players operation !temp_x constants *= !temp_x constants
scoreboard players operation !temp_y constants *= !temp_y constants
scoreboard players operation !temp_z constants *= !temp_z constants
scoreboard players operation !temp_square constants = !temp_x constants
scoreboard players operation !temp_square constants += !temp_y constants
scoreboard players operation !temp_square constants += !temp_z constants
