function highliner:game/placing/place/main
execute if score !is_not_placeable constants matches 0 run function highliner:game/progress/next_turn
