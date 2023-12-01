# Move to adjusted coordinates
function highliner:game/placing/adjust_offset
execute at @s align xz run tp @s ~0.5 72 ~0.5

# Markers -> Raycasted
tp @e[type=minecraft:marker,name="placing_preview"] @s

# Offset on markers
execute if score !placing_direction constants matches 1 as @e[type=minecraft:marker,name="placing_preview",scores={placing=1}] at @s run tp ~4 ~ ~
execute if score !placing_direction constants matches 1 as @e[type=minecraft:marker,name="placing_preview",scores={placing=-1}] at @s run tp ~-4 ~ ~
execute if score !placing_direction constants matches -1 as @e[type=minecraft:marker,name="placing_preview",scores={placing=1}] at @s run tp ~ ~ ~4
execute if score !placing_direction constants matches -1 as @e[type=minecraft:marker,name="placing_preview",scores={placing=-1}] at @s run tp ~ ~ ~-4

# Slimes -> Markers
tp @e[type=minecraft:slime,name="placing_preview",scores={placing=1}] @e[type=minecraft:marker,name="placing_preview",scores={placing=1},limit=1]
tp @e[type=minecraft:slime,name="placing_preview",scores={placing=0}] @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1]
tp @e[type=minecraft:slime,name="placing_preview",scores={placing=-1}] @e[type=minecraft:marker,name="placing_preview",scores={placing=-1},limit=1]

# Offset on slimes
execute as @e[type=minecraft:slime,name="placing_preview",scores={placing_dx=0}] at @s run tp @s ~0 73 ~0 0 0
execute as @e[type=minecraft:slime,name="placing_preview",scores={placing_dx=1}] at @s run tp @s ~1 73 ~0 0 0
execute as @e[type=minecraft:slime,name="placing_preview",scores={placing_dx=2}] at @s run tp @s ~2 73 ~0 0 0
execute as @e[type=minecraft:slime,name="placing_preview",scores={placing_dx=3}] at @s run tp @s ~3 73 ~0 0 0
execute as @e[type=minecraft:slime,name="placing_preview",scores={placing_dz=0}] at @s run tp @s ~0 73 ~0 0 0
execute as @e[type=minecraft:slime,name="placing_preview",scores={placing_dz=1}] at @s run tp @s ~0 73 ~1 0 0
execute as @e[type=minecraft:slime,name="placing_preview",scores={placing_dz=2}] at @s run tp @s ~0 73 ~2 0 0
execute as @e[type=minecraft:slime,name="placing_preview",scores={placing_dz=3}] at @s run tp @s ~0 73 ~3 0 0

# Check placeable
function highliner:game/get_turn
execute at @s store result score !is_not_placeable constants run function highliner:game/board/check/is_not_placeable

# Settings for glowing
team modify placing_preview color yellow
execute if score !is_not_placeable constants matches 1 as @e[type=minecraft:slime,team=placing_preview,name="placing_preview"] run data modify entity @s Glowing set value false
execute unless score !is_not_placeable constants matches 1 as @e[type=minecraft:slime,team=placing_preview,name="placing_preview"] run data modify entity @s Glowing set value true
execute if score !is_not_placeable constants matches 0 if score !is_red_turn constants matches 1 run team modify placing_preview color dark_red
execute if score !is_not_placeable constants matches 0 unless score !is_red_turn constants matches 1 run team modify placing_preview color blue
execute if score !gamemode constants matches 3 unless score !is_not_placeable constants matches 1 if score !is_red_turn constants matches 1 run team modify placing_preview color dark_red
execute if score !gamemode constants matches 3 unless score !is_not_placeable constants matches 1 unless score !is_red_turn constants matches 1 run team modify placing_preview color blue

# Bridging shapes
execute if score !is_not_placeable constants matches 0 if score !tried_bridging constants matches 1 if score !placing_direction constants matches 01 as @e[type=minecraft:slime,name="placing_preview",scores={placing=0,placing_dx=1..2,placing_dz=0}] at @s run tp @s ~ ~ ~01
execute if score !is_not_placeable constants matches 0 if score !tried_bridging constants matches 1 if score !placing_direction constants matches 01 as @e[type=minecraft:slime,name="placing_preview",scores={placing=0,placing_dx=1..2,placing_dz=3}] at @s run tp @s ~ ~ ~-1
execute if score !is_not_placeable constants matches 0 if score !tried_bridging constants matches 1 if score !placing_direction constants matches -1 as @e[type=minecraft:slime,name="placing_preview",scores={placing=0,placing_dz=1..2,placing_dx=0}] at @s run tp @s ~01 ~ ~
execute if score !is_not_placeable constants matches 0 if score !tried_bridging constants matches 1 if score !placing_direction constants matches -1 as @e[type=minecraft:slime,name="placing_preview",scores={placing=0,placing_dz=1..2,placing_dx=3}] at @s run tp @s ~-1 ~ ~
