execute store result score !placed constants run function highliner:game/placing/place/main
execute unless score !placed constants matches 0 if score !gamemode constants matches 1 run function highliner:game/progress/next_turn
