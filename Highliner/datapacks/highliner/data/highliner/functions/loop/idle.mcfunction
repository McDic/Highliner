execute as @a[scores={welcome=0..}] at @s run function highliner:welcome/idle

# Refresh all entities if there are too many
scoreboard players set !display_count constants 0
execute as @e[type=!minecraft:player,tag=lobby_display] run scoreboard players add !display_count constants 1
execute if score !display_count constants matches 20.. run function highliner:lobby/create/idle

# Rotate display and interactions if nobody is near
execute as @e[tag=lobby_display] store result score !lobby_display_rotated constants run function highliner:lobby/refresh_displays/rotate
execute unless score !lobby_display_rotated constants matches 0 run function highliner:lobby/create/tiny_interactions/move/main

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
function highliner:lobby/lobbytrigger/filter
execute as @p[scores={lobbytrigger_v2=1}] run function highliner:lobby/prev_menu
execute as @p[scores={lobbytrigger_v2=2}] run function highliner:lobby/change_selected
execute as @p[scores={lobbytrigger_v2=3}] run function highliner:lobby/move_down
execute as @p[scores={lobbytrigger_v2=4}] run function highliner:lobby/next_menu
execute if entity @p[scores={lobbytrigger_v2=1..}] run function highliner:lobby/lobbytrigger/forget
scoreboard players set @a lobbytrigger_v2 0
