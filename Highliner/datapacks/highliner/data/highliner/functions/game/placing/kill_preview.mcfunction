execute as @e[type=minecraft:slime] run data modify entity @s CustomName set value '"trash"'
execute as @e[type=minecraft:slime] run data modify entity @s Size set value 0
tp @e[type=minecraft:slime] 0 256 0
kill @e[type=minecraft:slime]
