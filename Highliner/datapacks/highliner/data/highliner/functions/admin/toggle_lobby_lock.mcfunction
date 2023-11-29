execute store result score !prev_lock constants if entity @p[tag=lobby_lock]
execute store result score !my_lock constants if entity @p[tag=lobby_lock]
execute if score !my_lock constants matches 0 run tag @s add lobby_lock
execute unless score !my_lock constants matches 0 run tag @s[tag=lobby_lock] remove lobby_lock
execute store result score !after_lock constants if entity @p[tag=lobby_lock]

execute if score !prev_lock constants = !after_lock constants run return 0
execute if entity @p[tag=lobby_lock] run tellraw @a {"translate":"highliner.message.lobby_locked","color":"yellow","bold":true}
execute unless entity @p[tag=lobby_lock] run tellraw @a {"translate":"highliner.message.lobby_unlocked","color":"yellow","bold":true}
