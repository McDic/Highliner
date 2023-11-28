execute as @a[scores={welcome=0}] at @s run function highliner:welcome/idle

# Rotate display and interactions if nobody is near
execute unless entity @p[gamemode=adventure,x=0,y=90,z=1,distance=..3.5] as @e[tag=lobby_display] positioned as @s rotated as @s run tp @s ~ ~ ~ ~1.5 ~
execute unless entity @p[gamemode=adventure,x=0,y=90,z=1,distance=..5] as @e[tag=lobby_display] positioned as @s rotated as @s run tp @s ~ ~ ~ ~1.5 ~
execute unless entity @p[gamemode=adventure,x=0,y=90,z=1,distance=..6.5] as @e[tag=lobby_display] positioned as @s rotated as @s run tp @s ~ ~ ~ ~3 ~
execute unless entity @p[gamemode=adventure,x=0,y=90,z=1,distance=..8] as @e[tag=lobby_display] positioned as @s rotated as @s run tp @s ~ ~ ~ ~6 ~
execute unless entity @p[gamemode=adventure,x=0,y=90,z=1,distance=..9.5] as @e[tag=lobby_display] positioned as @s rotated as @s run tp @s ~ ~ ~ ~12 ~
execute unless entity @p[gamemode=adventure,x=0,y=90,z=1,distance=..11] as @e[tag=lobby_display] positioned as @s rotated as @s run tp @s ~ ~ ~ ~24 ~
execute unless entity @p[gamemode=adventure,x=0,y=90,z=1,distance=..3.5] run function highliner:lobby/create/tiny_interactions/move/main


# Lobby trigger v2
scoreboard players set @a lobbytrigger_v2 0
execute as @e[type=minecraft:interaction,tag=lobby_interaction_leftarrow] on attacker run scoreboard players set @s lobbytrigger_v2 1
execute as @e[type=minecraft:interaction,tag=lobby_interaction_leftarrow] on target run scoreboard players set @s lobbytrigger_v2 1
execute as @e[type=minecraft:interaction,tag=lobby_interaction_change] on attacker run scoreboard players set @s lobbytrigger_v2 2
execute as @e[type=minecraft:interaction,tag=lobby_interaction_change] on target run scoreboard players set @s lobbytrigger_v2 2
execute as @e[type=minecraft:interaction,tag=lobby_interaction_down] on attacker run scoreboard players set @s lobbytrigger_v2 3
execute as @e[type=minecraft:interaction,tag=lobby_interaction_down] on target run scoreboard players set @s lobbytrigger_v2 3
execute as @e[type=minecraft:interaction,tag=lobby_interaction_rightarrow] on attacker run scoreboard players set @s lobbytrigger_v2 4
execute as @e[type=minecraft:interaction,tag=lobby_interaction_rightarrow] on target run scoreboard players set @s lobbytrigger_v2 4
execute if score !lobby_locked constants matches 1 if entity @p[scores={lobbytrigger_v2=1..}] run tellraw @a[scores={lobbytrigger_v2=1..}] {"translate":"highliner.lobby.message.locked","color":"yellow","italic":true}
execute if score !lobby_locked constants matches 1 run scoreboard players set @a lobbytrigger_v2 0
scoreboard players set !concurrent_triggers constants 0
execute as @a[scores={lobbytrigger_v2=1..}] run scoreboard players add !concurrent_triggers constants 1
execute if score !concurrent_triggers constants matches 2.. run tellraw @a[scores={lobbytrigger_v2=1..}] {"translate":"highliner.lobby.message.duplicated","color":"yellow","italic":true}
execute if score !concurrent_triggers constants matches 2.. run scoreboard players set @a lobbytrigger_v2 0
execute as @p[scores={lobbytrigger_v2=1}] run function highliner:lobby/prev_menu
execute as @p[scores={lobbytrigger_v2=2}] run function highliner:lobby/change_selected
execute as @p[scores={lobbytrigger_v2=3}] run function highliner:lobby/move_down
execute as @p[scores={lobbytrigger_v2=4}] run function highliner:lobby/next_menu
execute if score !concurrent_triggers constants matches 1.. as @e[type=minecraft:interaction,tag=lobby_interaction] run data remove entity @s attack
execute if score !concurrent_triggers constants matches 1.. as @e[type=minecraft:interaction,tag=lobby_interaction] run data remove entity @s interaction
