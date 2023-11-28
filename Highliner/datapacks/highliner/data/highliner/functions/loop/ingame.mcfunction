execute as @a[scores={welcome=0..}] at @s run function highliner:welcome/ingame
clear @a[team=spectators]
clear @a[team=!spectators,scores={turn=-1}] minecraft:iron_boots
clear @a[team=!spectators,scores={turn=-1}] minecraft:golden_boots

execute if score !in_turn constants matches 1 run function highliner:game/progress/in_turn
