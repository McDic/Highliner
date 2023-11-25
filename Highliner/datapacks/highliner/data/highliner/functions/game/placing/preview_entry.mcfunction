execute store result score !raycast_inboard constants as @s at @s run function highliner:game/placing/raycast/entry
execute if score !raycast_inboard constants matches 0 as @e[type=minecraft:slime,name="placing_preview"] run data modify entity @s Glowing set value false
execute if score !raycast_inboard constants matches 1 as @e[type=minecraft:slime,name="placing_preview"] run data modify entity @s Glowing set value true
execute if score !raycast_inboard constants matches 1 run execute as @e[type=minecraft:marker,name="placing_raycast",limit=1] at @s run function highliner:game/placing/preview
# kill @e[type=minecraft:marker,name="placing_raycast"]
