execute as @a[scores={welcome=0..}] at @s run function highliner:welcome/replay
execute unless entity @p run function highliner:replay/exit

# Move displays
function highliner:lobby/refresh_displays/move/main

# Lobby trigger v2; Unlike idle, do not horizontally change menu.
scoreboard players set @a lobbytrigger_v2 0
execute as @e[type=minecraft:interaction,tag=lobby_interaction_change] on attacker run scoreboard players set @s lobbytrigger_v2 2
execute as @e[type=minecraft:interaction,tag=lobby_interaction_change] on target run scoreboard players set @s lobbytrigger_v2 2
execute as @e[type=minecraft:interaction,tag=lobby_interaction_down] on attacker run scoreboard players set @s lobbytrigger_v2 3
execute as @e[type=minecraft:interaction,tag=lobby_interaction_down] on target run scoreboard players set @s lobbytrigger_v2 3
function highliner:lobby/lobbytrigger/filter
execute as @p[scores={lobbytrigger_v2=2}] run function highliner:lobby/change_selected
execute as @p[scores={lobbytrigger_v2=3}] run function highliner:lobby/move_down
function highliner:lobby/lobbytrigger/forget
scoreboard players set @a lobbytrigger_v2 0

# Progress display
title @a actionbar {"translate":"highliner.gamestatus.current","color":"yellow","with":[{"score":{"name":"!turn","objective":"constants"},"color":"yellow"},{"score":{"name":"!saved_max_turn","objective":"constants"},"color":"yellow"},{"translate":"highliner.redteam","color":"dark_red"},["",{"score":{"name":"!claimed_red","objective":"constants"},"color":"dark_red"},{"text":"(","color":"light_purple"},{"score":{"name":"!dominated_red","objective":"constants"},"color":"light_purple"},{"text":")","color":"light_purple"}],{"translate":"highliner.blueteam","color":"aqua"},["",{"score":{"name":"!claimed_blue","objective":"constants"},"color":"aqua"},{"text":"(","color":"dark_blue"},{"score":{"name":"!dominated_blue","objective":"constants"},"color":"dark_blue"},{"text":")","color":"dark_blue"}]]}
function highliner:game/bossbar/update

# Move forward or backward
execute as @p[,scores={used_item_backward=1..}] run function highliner:replay/progress/backward
execute as @p[,scores={used_item_forward=1..}] run function highliner:replay/progress/forward
execute as @p[,scores={rotated=1..}] run function highliner:settings/replay_jump_speed
execute as @a[scores={used_item_backward=1..}] run function highliner:game/items/reset
execute as @a[scores={used_item_forward=1..}] run function highliner:game/items/reset
execute as @a[scores={rotated=1..}] run function highliner:game/items/reset
