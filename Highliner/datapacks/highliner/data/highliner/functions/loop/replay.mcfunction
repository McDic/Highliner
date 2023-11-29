execute as @a[scores={welcome=0..}] at @s run function highliner:welcome/replay

execute unless entity @p[tag=replayer] run function highliner:replay/exit

# Rotate display and interactions if nobody is near
execute as @e[tag=lobby_display] store result score !lobby_display_rotated constants run function highliner:lobby/refresh_displays/rotate
execute unless score !lobby_display_rotated constants matches 0 run function highliner:lobby/create/tiny_interactions/move/main

# Lobby trigger v2; Unlike idle, do not horizontally change menu.
scoreboard players set @a lobbytrigger_v2 0
execute as @e[type=minecraft:interaction,tag=lobby_interaction] on attacker run scoreboard players set @s[tag=!replayer] lobbytrigger_v2 -1
execute as @e[type=minecraft:interaction,tag=lobby_interaction] on target run scoreboard players set @s[tag=!replayer] lobbytrigger_v2 -1
execute as @e[type=minecraft:interaction,tag=lobby_interaction_change] on attacker run scoreboard players set @s[tag=replayer] lobbytrigger_v2 2
execute as @e[type=minecraft:interaction,tag=lobby_interaction_change] on target run scoreboard players set @s[tag=replayer] lobbytrigger_v2 2
execute as @e[type=minecraft:interaction,tag=lobby_interaction_down] on attacker run scoreboard players set @s[tag=replayer] lobbytrigger_v2 3
execute as @e[type=minecraft:interaction,tag=lobby_interaction_down] on target run scoreboard players set @s[tag=replayer] lobbytrigger_v2 3
function highliner:lobby/lobbytrigger/filter
execute as @p[tag=replayer,scores={lobbytrigger_v2=2}] run function highliner:lobby/change_selected
execute as @p[tag=replayer,scores={lobbytrigger_v2=3}] run function highliner:lobby/move_down
execute if entity @p[scores={lobbytrigger_v2=1..}] run function highliner:lobby/lobbytrigger/forget
scoreboard players set @a lobbytrigger_v2 0

# Progress display
title @a actionbar {"translate":"highliner.gamestatus.current","color":"yellow","with":[{"score":{"name":"!turn","objective":"constants"},"color":"yellow"},{"score":{"name":"!saved_max_turn","objective":"constants"},"color":"yellow"},{"translate":"highliner.redteam","color":"dark_red"},["",{"score":{"name":"!claimed_red","objective":"constants"},"color":"dark_red"},{"text":"(","color":"light_purple"},{"score":{"name":"!dominated_red","objective":"constants"},"color":"light_purple"},{"text":")","color":"light_purple"}],{"translate":"highliner.blueteam","color":"aqua"},["",{"score":{"name":"!claimed_blue","objective":"constants"},"color":"aqua"},{"text":"(","color":"dark_blue"},{"score":{"name":"!dominated_blue","objective":"constants"},"color":"dark_blue"},{"text":")","color":"dark_blue"}]]}
function highliner:game/bossbar/update

# Move forward or backward
execute as @p[tag=replayer,scores={used_item_backward=1..}] run function highliner:replay/progress/backward/main
execute as @p[tag=replayer,scores={used_item_forward=1..}] run function highliner:replay/progress/forward/main