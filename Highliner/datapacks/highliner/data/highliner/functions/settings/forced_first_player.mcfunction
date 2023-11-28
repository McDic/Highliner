scoreboard players add !forced_first_player constants 1
scoreboard players operation !forced_first_player constants %= !3 constants
execute if score !gamemode constants matches 0 run function highliner:lobby/refresh_displays/all
