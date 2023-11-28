scoreboard players add !disable_x22 constants 1
scoreboard players operation !disable_x22 constants %= !2 constants
execute if score !gamemode constants matches 0 run function highliner:lobby/refresh_displays/all
