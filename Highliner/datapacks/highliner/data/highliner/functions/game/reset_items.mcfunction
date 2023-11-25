clear @s
execute if score !gamemode constants matches 1 run item replace entity @s[team=!spectators,scores={turn=1}] hotbar.0 with minecraft:iron_boots{display: {Name: '{"translate":"highliner.item.name.rotate","with":[{"keybind":"key.use"}]}'}}
execute if score !gamemode constants matches 1 run item replace entity @s[team=!spectators,scores={turn=1}] hotbar.1 with minecraft:golden_boots{display: {Name: '{"translate":"highliner.item.name.place","with":[{"keybind":"key.use"}]}'}}
execute if score !gamemode constants matches 1 run item replace entity @s[team=!spectators] hotbar.8 with minecraft:diamond_boots{display: {Name: '{"translate":"highliner.item.name.surrender","with":[{"keybind":"key.use"}]}'}}
item replace entity @s weapon.offhand with minecraft:filled_map{map: 1, display: {Name: '{"translate":"highliner.item.name.map"}'}}
scoreboard players set @s rotated 0
scoreboard players set @s tried_placing 0
