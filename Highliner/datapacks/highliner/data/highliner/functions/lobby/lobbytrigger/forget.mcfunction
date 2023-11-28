execute as @e[type=minecraft:interaction,tag=lobby_interaction] run data remove entity @s attack
execute as @e[type=minecraft:interaction,tag=lobby_interaction] run data remove entity @s interaction
scoreboard players set @a lobbytrigger_v2 0
