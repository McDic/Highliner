scoreboard players add !lobby_locked constants 1
scoreboard players operation !lobby_locked constants %= !2 constants
execute if score !lobby_locked constants matches 1 run tellraw @a {"translate":"highliner.message.lobby_locked","color":"yellow","bold":true}
execute unless score !lobby_locked constants matches 1 run tellraw @a {"translate":"highliner.message.lobby_unlocked","color":"yellow","bold":true}
