scoreboard players add !forced_first_player constants 1
scoreboard players operation !forced_first_player constants %= !3 constants
# setblock 0 90 1 minecraft:oak_wall_sign[facing=south] destroy
function highliner:lobby/refresh_signs/forced_first_player
