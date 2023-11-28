tp @e[type=minecraft:marker,name="placing_preview"] ~ ~ ~
execute as @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] at @s run function highliner:game/placing/preview
