scoreboard players add !gamespeed constants 1
scoreboard players operation !gamespeed constants %= !3 constants
# 0: Standard (Normal); 300s / 30s
# 1: Short; 180s / 10s
# 2: Blitz; 90s / 5s
execute if score !gamespeed constants matches 0 run scoreboard players set !gamespeed_maxtime constants 300
execute if score !gamespeed constants matches 0 run scoreboard players set !gamespeed_addtime constants 30
execute if score !gamespeed constants matches 1 run scoreboard players set !gamespeed_maxtime constants 180
execute if score !gamespeed constants matches 1 run scoreboard players set !gamespeed_addtime constants 10
execute if score !gamespeed constants matches 2 run scoreboard players set !gamespeed_maxtime constants 90
execute if score !gamespeed constants matches 2 run scoreboard players set !gamespeed_addtime constants 5
execute if score !gamemode constants matches 0 run function highliner:lobby/refresh_displays/all
