function highliner:game/get_turn
execute store result score !is_not_placeable constants as @e[type=minecraft:marker,name="placing_preview",scores={placing=0}] at @s run function highliner:game/board/check/is_not_placeable

execute if score !is_not_placeable constants matches 1 run tellraw @s {"translate":"highliner.error.cantplace.outboard", "color":"yellow", "italic":true}
execute if score !is_not_placeable constants matches 2 run tellraw @s {"translate":"highliner.error.cantplace.general", "color":"yellow", "italic":true}
execute if score !is_not_placeable constants matches 3 run tellraw @s {"translate":"highliner.error.cantplace.useless", "color":"yellow", "italic":true}
execute if score !is_not_placeable constants matches 4 run tellraw @s {"translate":"highliner.error.cantplace.2x2", "color":"yellow", "italic":true}
execute unless score !is_not_placeable constants matches 0 as @a[team=!spectators,scores={turn=1}] at @s run playsound minecraft:entity.villager.no master @s
execute unless score !is_not_placeable constants matches 0 run return 0

execute if score !tried_bridging constants matches 0 as @e[type=minecraft:slime,name="placing_preview"] at @s run function highliner:game/placing/place/typical
execute if score !tried_bridging constants matches 0 if score !gamemode constants matches 1 as @a at @s run playsound minecraft:block.grass.place master @s ~ ~ ~ 10
execute if score !tried_bridging constants matches 1 as @e[type=minecraft:marker,name="placing_preview",scores={placing=0}] at @s run function highliner:game/placing/place/bridge
execute if score !tried_bridging constants matches 1 as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 10
