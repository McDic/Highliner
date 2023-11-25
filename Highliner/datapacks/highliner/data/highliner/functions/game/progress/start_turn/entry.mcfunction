clear @a
function highliner:game/check_both_players
execute if score !both_player_exists constants matches 1 run function highliner:game/progress/start_turn/main
execute unless score !both_player_exists constants matches 1 run tellraw @a {"translate":"highliner.error.turnswitch.waiting","color":"yellow","italic":true}
execute unless score !both_player_exists constants matches 1 run function highliner:game/progress/timer/reduce
execute unless score !both_player_exists constants matches 1 run function highliner:game/progress/start_turn/wait
