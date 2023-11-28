function highliner:game/placing/place/main
execute if score !is_not_placeable constants matches 0 if score !gamemode constants matches 1 run function highliner:game/progress/next_turn
