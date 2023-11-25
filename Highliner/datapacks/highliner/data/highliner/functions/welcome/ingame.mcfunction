scoreboard players set !rejoined constants 0
execute if entity @s[team=redteam] run scoreboard players set !rejoined constants 1
execute if entity @s[team=blueteam] run scoreboard players set !rejoined constants 1
execute if score !rejoined constants matches 0 run function highliner:welcome/ingame_spectators
execute if score !rejoined constants matches 1 run function highliner:welcome/ingame_rejoin
