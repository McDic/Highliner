# Perform raycast then return (is_this_outboard ? 0 : 1).
kill @e[type=minecraft:marker,name="placing_raycast"]
summon minecraft:marker ~ ~ ~ {CustomName: '{"text":"placing_raycast"}'}
execute at @s positioned ~ ~1.62 ~ run tp @e[type=minecraft:marker,name="placing_raycast"] ~ ~ ~
scoreboard players set @e[type=minecraft:marker,name="placing_raycast"] gps_y 999
execute as @e[type=minecraft:marker,name="placing_raycast",x_rotation=5..90] run execute at @s run function highliner:game/placing/raycast/recursive_move
execute store result score !raycast_inboard constants as @e[type=minecraft:marker,name="placing_raycast",limit=1] at @s run function highliner:game/placing/raycast/check_inboard
execute if score !raycast_inboard constants matches 0 run return 0
return 1
