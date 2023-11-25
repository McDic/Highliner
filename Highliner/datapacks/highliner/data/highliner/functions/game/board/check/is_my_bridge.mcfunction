# scoreboard players set !is_bridged constants 1
# execute unless block ~ 71 ~ minecraft:lime_wool run scoreboard players set !is_bridged constants 0
# execute if block ~1 71 ~ minecraft:lime_wool if block ~2 71 ~ minecraft:lime_wool if block ~ 71 ~1 minecraft:lime_wool if block ~ 71 ~2 minecraft:lime_wool if block ~1 71 ~3 minecraft:lime_wool if block ~2 71 ~3 minecraft:lime_wool if block ~3 71 ~1 minecraft:lime_wool if block ~3 71 ~2 minecraft:lime_wool run scoreboard players set !is_bridged constants 0
# execute if score !is_bridged constants matches 1 run scoreboard players set @s current_tile 2

execute unless block ~ 71 ~ minecraft:lime_wool run return 0
execute if block ~1 71 ~ minecraft:lime_wool if block ~2 71 ~ minecraft:lime_wool if block ~ 71 ~1 minecraft:lime_wool if block ~ 71 ~2 minecraft:lime_wool if block ~1 71 ~3 minecraft:lime_wool if block ~2 71 ~3 minecraft:lime_wool if block ~3 71 ~1 minecraft:lime_wool if block ~3 71 ~2 minecraft:lime_wool run return 0
return 1
