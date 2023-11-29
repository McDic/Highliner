function highliner:welcome/supercommon

team join spectators @s

function highliner:game/items/reset

effect clear @s

title @s clear
title @s times 1s 3s 1s
title @s title {"translate":"highliner.welcome.title","color":"yellow","bold":true,"with":[{"selector":"@s","bold":true,"color":"yellow"}]}
title @s subtitle {"translate":"highliner.welcome.subtitle", "color":"yellow"}

xp set @s 0 levels
