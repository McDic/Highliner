clear @s
item replace entity @s weapon.offhand with minecraft:filled_map{map: 1} 1
effect clear @s
scoreboard players set @s welcome -1
scoreboard players set @s lobbytrigger 0
team join spectators @s

title @s clear
title @s times 2s 4s 2s
title @s title {"translate":"highliner.welcome.title","color":"yellow","bold":true,"with":[{"selector":"@s","bold":true,"color":"yellow"}]}
title @s subtitle {"translate":"highliner.welcome.subtitle", "color":"yellow"}

xp set @a 0 levels
