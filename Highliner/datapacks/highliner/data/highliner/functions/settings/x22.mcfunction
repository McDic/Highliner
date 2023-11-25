scoreboard players add !disable_x22 constants 1
scoreboard players operation !disable_x22 constants %= !2 constants
setblock 1 90 -1 minecraft:oak_wall_sign[facing=east] destroy
function highliner:lobby/refresh_signs/x22
