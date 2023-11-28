scoreboard players set @s welcome -1
scoreboard players set @s lobbytrigger_v2 0
team join spectators @s
tag @s[tag=lobby_lock] remove lobby_lock
tag @s[tag=replayer] remove replayer

function highliner:game/reset_items

effect clear @s

title @s clear
title @s times 1s 3s 1s
title @s title {"translate":"highliner.welcome.title","color":"yellow","bold":true,"with":[{"selector":"@s","bold":true,"color":"yellow"}]}
title @s subtitle {"translate":"highliner.welcome.subtitle", "color":"yellow"}

xp set @s 0 levels
