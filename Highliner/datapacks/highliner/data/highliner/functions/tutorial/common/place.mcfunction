execute as @e[type=minecraft:slime,name="placing_preview"] run data modify entity @s Glowing set value true
execute as @e[type=minecraft:marker,name="tutorial_placer"] at @s run function highliner:game/placing/preview
execute as @e[type=minecraft:marker,name="tutorial_placer"] at @s run function highliner:game/placing/place/main
schedule function highliner:game/board/refresh 3s
