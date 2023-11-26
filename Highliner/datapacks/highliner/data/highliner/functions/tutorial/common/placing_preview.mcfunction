execute as @e[type=minecraft:slime,name="placing_preview"] run data modify entity @s Glowing set value true
execute as @e[type=minecraft:marker,name="tutorial_placer",limit=1] at @s run function highliner:game/placing/preview
