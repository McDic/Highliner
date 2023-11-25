# Common effect
effect give @a[gamemode=adventure] minecraft:speed infinite 9 true
effect give @a[gamemode=adventure] minecraft:jump_boost infinite 2 true
effect give @a minecraft:saturation infinite 0 true
effect give @a minecraft:resistance infinite 0 true
effect give @a minecraft:night_vision infinite 0 true
effect give @a minecraft:weakness infinite 10 true

# Kill small slimes
kill @e[type=minecraft:slime,nbt={Size: 0}]

# Item
execute as @a[scores={itemdrop=1..}] at @s run function highliner:game/item_dropped
kill @e[type=minecraft:item]

# Branching ingame/idle/tutorial
scoreboard players operation @a welcome += !0 constants
execute if score !gamemode constants matches 0 run function highliner:loop/idle
execute if score !gamemode constants matches 1 run function highliner:loop/ingame
execute if score !gamemode constants matches 2 run function highliner:loop/tutorial

# Debugging
scoreboard players operation !tutorial_placeable_red debug = !tutorial_placeable_red constants
scoreboard players operation !is_red_turn debug = !is_red_turn constants
scoreboard players operation !gamemode debug = !gamemode constants

# Localization
scoreboard players operation @a localization += !0 constants
