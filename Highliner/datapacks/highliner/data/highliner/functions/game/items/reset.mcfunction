clear @s

item replace entity @s[advancements={highliner:game_master=true},team=spectators] armor.head with minecraft:gray_banner{Enchantments:[{id:binding_curse,lvl:1}],BlockEntityTag:{Base:7,Patterns:[{Pattern:bri,Color:4},{Pattern:bo,Color:15}]}}
item replace entity @s[advancements={highliner:game_master=true},team=redteam] armor.head with minecraft:gray_banner{Enchantments:[{id:binding_curse,lvl:1}],BlockEntityTag:{Base:7,Patterns:[{Pattern:bri,Color:14},{Pattern:bo,Color:15}]}}
item replace entity @s[advancements={highliner:game_master=true},team=blueteam] armor.head with minecraft:gray_banner{Enchantments:[{id:binding_curse,lvl:1}],BlockEntityTag:{Base:7,Patterns:[{Pattern:bri,Color:3},{Pattern:bo,Color:15}]}}

execute if score !gamemode constants matches 1 run item replace entity @s[team=!spectators,scores={turn=1}] hotbar.0 with minecraft:iron_boots{display: {Name: '{"translate":"highliner.item.name.rotate","with":[{"keybind":"key.use"}]}'}}
execute if score !gamemode constants matches 1 run item replace entity @s[team=!spectators,scores={turn=1}] hotbar.1 with minecraft:golden_boots{display: {Name: '{"translate":"highliner.item.name.place","with":[{"keybind":"key.use"}]}'}}
execute if score !gamemode constants matches 1 run item replace entity @s[team=!spectators] hotbar.8 with minecraft:diamond_boots{display: {Name: '{"translate":"highliner.item.name.surrender","with":[{"keybind":"key.use"}]}'}}

execute if score !gamemode constants matches 3 if entity @p[tag=lobby_lock] as @s[tag=lobby_lock] run function highliner:game/items/reset_replay
execute if score !gamemode constants matches 3 unless entity @p[tag=lobby_lock] run function highliner:game/items/reset_replay

item replace entity @s weapon.offhand with minecraft:filled_map{map: 1, display: {Name: '{"translate":"highliner.item.name.map"}'}}
item replace entity @s hotbar.7 with minecraft:netherite_boots{display: {Name: '{"translate":"highliner.item.name.change_height","with":[{"keybind":"key.use"}]}'}}

scoreboard players set @s rotated 0
scoreboard players set @s tried_placing 0
scoreboard players set @s changed_floor 0
scoreboard players set @s used_item_backward 0
scoreboard players set @s used_item_forward 0
scoreboard players set @s try_surrendered 0
