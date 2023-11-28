scoreboard players add !instant_placing constants 1
scoreboard players operation !instant_placing constants %= !2 constants
execute if score !gamemode constants matches 0 run function highliner:lobby/refresh_displays/all
