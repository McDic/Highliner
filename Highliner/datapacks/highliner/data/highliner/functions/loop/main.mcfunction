# Common effect
effect give @a[gamemode=adventure] minecraft:speed infinite 9 true
effect give @a[gamemode=adventure] minecraft:jump_boost infinite 2 true
effect give @a minecraft:saturation infinite 0 true
effect give @a minecraft:resistance infinite 0 true
effect give @a minecraft:night_vision infinite 0 true
effect give @a minecraft:weakness infinite 10 true

# Kill small slimes
kill @e[type=minecraft:slime,nbt={Size: 0}]

# Floor changing is always active
execute as @a[scores={changed_floor=1..}] at @s run function highliner:settings/toggle_floor

# Item
execute as @a[scores={itemdrop=1..}] at @s run function highliner:game/items/dropped
kill @e[type=minecraft:item]

# Branching ingame/idle/tutorial/replay
scoreboard players operation @a welcome += !0 constants
execute if score !gamemode constants matches 0 run function highliner:loop/idle
execute if score !gamemode constants matches 1 run function highliner:loop/ingame
execute if score !gamemode constants matches 2 run function highliner:loop/tutorial
execute if score !gamemode constants matches 3 run function highliner:loop/replay

# Advancements
function highliner:advancements/etc
