execute store result score !startable_common constants run function highliner:game/start/check/common
execute if score !startable_common constants matches 0 run return 0

execute if score !turn constants >= !max_turn constants run tellraw @a {"translate": "highliner.error.replay.max_turn_exceeded", "color":"yellow", "italic":true, "with":[{"score":{"objective":"constants", "name":"!max_turn"}}]}
execute if score !turn constants >= !max_turn constants run return 0

scoreboard players set !half_dominated constants 0
execute if score !dominated_red constants >= !halftiles constants run scoreboard players set !half_dominated constants 1
execute if score !dominated_blue constants >= !halftiles constants run scoreboard players set !half_dominated constants 1
execute if score !half_dominated constants matches 1 run tellraw @a {"translate": "highliner.error.replay.half_dominated", "color":"yellow", "italic":true}
execute if score !half_dominated constants matches 1 run return 0

return 1
