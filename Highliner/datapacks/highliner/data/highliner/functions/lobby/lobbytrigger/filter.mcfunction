execute if entity @p[tag=lobby_lock] if entity @p[tag=!lobby_lock,scores={lobbytrigger_v2=1..}] run tellraw @a[tag=!lobby_lock,scores={lobbytrigger_v2=1..}] {"translate":"highliner.lobby.message.locked","color":"yellow","italic":true}
execute if entity @p[tag=lobby_lock] run scoreboard players set @a[tag=!lobby_lock] lobbytrigger_v2 0

scoreboard players set !concurrent_triggers constants 0
execute as @a[scores={lobbytrigger_v2=1..}] run scoreboard players add !concurrent_triggers constants 1
execute if score !concurrent_triggers constants matches 2.. run tellraw @a[scores={lobbytrigger_v2=1..}] {"translate":"highliner.lobby.message.duplicated","color":"yellow","italic":true}
execute if score !concurrent_triggers constants matches 2.. run scoreboard players set @a lobbytrigger_v2 0

execute if score !gamemode constants matches 3 as @a[scores={lobbytrigger_v2=..-1}] run tellraw @s {"translate":"highliner.lobby.message.disallowed.replay", "color":"yellow", "italic":true}
execute unless score !gamemode constants matches 3 as @a[scores={lobbytrigger_v2=..-1}] run tellraw @s {"translate":"highliner.lobby.message.disallowed.unknown", "color":"yellow", "italic":true}
scoreboard players set @a[scores={lobbytrigger_v2=..-1}] lobbytrigger_v2 0

execute if score !gamemode constants matches 3 unless score !moving_turn_in_progress constants matches 0 as @a[scores={lobbytrigger_v2=1..}] run tellraw @s {"translate":"highliner.error.replay.moving_in_progress","color":"yellow","italic":true}
execute if score !gamemode constants matches 3 unless score !moving_turn_in_progress constants matches 0 run scoreboard players set @a[scores={lobbytrigger_v2=1..}] lobbytrigger_v2 0
