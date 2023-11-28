function highliner:game/reset_items
effect clear @s
scoreboard players set @s welcome -1
scoreboard players set @s lobbytrigger 0
team join spectators @s

title @s clear
title @s times 1s 3s 1s
title @s title {"translate":"highliner.welcome.title","color":"yellow","bold":true,"with":[{"selector":"@s","bold":true,"color":"yellow"}]}
title @s subtitle {"translate":"highliner.welcome.subtitle", "color":"yellow"}

xp set @a 0 levels
