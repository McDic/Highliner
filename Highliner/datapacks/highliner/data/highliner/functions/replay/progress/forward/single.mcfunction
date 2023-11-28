execute as @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] at @s run function highliner:game/placing/place/main
function highliner:game/board/refresh
scoreboard players add !turn constants 1
