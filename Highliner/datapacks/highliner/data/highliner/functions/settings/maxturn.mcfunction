scoreboard players add !max_turn constants 30
execute if score !max_turn constants matches ..90 run scoreboard players set !max_turn constants 90
execute if score !max_turn constants > !max_turn_cap constants run scoreboard players set !max_turn constants 90
execute if score !gamemode constants matches 0 run function highliner:lobby/refresh_displays/all
