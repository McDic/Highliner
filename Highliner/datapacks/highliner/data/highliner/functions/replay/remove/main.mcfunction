# This function removes a saved match.
function highliner:game/record/get_match_id
execute if score !stored_saves constants matches ..0 run tellraw @a {"translate":"highliner.message.replay.delete.empty","color":"yellow","italic":true}
execute if score !stored_saves constants matches ..0 run return 0
data modify storage highliner:temp_storage temp_args set value {}
execute store result storage highliner:temp_storage temp_args.target_replay_index int 1 run scoreboard players get !target_replay_index constants
execute store success score !delete_succeed constants run function highliner:replay/remove/inner with storage highliner:temp_storage temp_args
execute if score !delete_succeed constants matches 0 run tellraw @a {"translate": "highliner.message.replay.delete.failed","color":"yellow","italic":true}
execute unless score !delete_succeed constants matches 0 run tellraw @a {"translate": "highliner.message.replay.delete.success","color":"yellow","italic":true,"with":[{"score":{"name":"!target_replay_match_id_0","objective":"constants"}},{"score":{"name":"!target_replay_match_id_1","objective":"constants"}},{"score":{"name":"!target_replay_match_id_2","objective":"constants"}},{"score":{"name":"!target_replay_match_id_3","objective":"constants"}}]}
function highliner:lobby/refresh_displays/all
