# 0: Lose, 1: Skip Turn
scoreboard players add !timeout_penalty constants 1
scoreboard players operation !timeout_penalty constants %= !2 constants
function highliner:lobby/refresh_displays/all
