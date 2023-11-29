execute as @a at @s run playsound minecraft:block.note_block.banjo master @s
execute as @a at @s run playsound minecraft:block.note_block.bass master @s
execute as @a at @s run playsound minecraft:block.note_block.basedrum master @s
execute as @a at @s run playsound minecraft:block.note_block.bell master @s
execute as @a at @s run playsound minecraft:block.note_block.iron_xylophone master @s
execute as @a at @s run playsound minecraft:block.note_block.guitar master @s
tellraw @a [{"selector":"@s","color":"yellow","bold":true},{"text":" pinged you!", "color":"yellow"}]