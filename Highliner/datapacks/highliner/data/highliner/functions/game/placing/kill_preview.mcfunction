execute as @e[type=minecraft:slime] run data modify entity @s CustomName set value '"trash"'
execute as @e[type=minecraft:slime] run data modify entity @s Size set value 1
tp @e[type=minecraft:slime,name="trash"] ~ -128 ~
