execute store result score !is_outboard constants run function highliner:game/board/check/is_outboard
execute if score !is_outboard constants matches 1 run return 0
execute positioned ~-4 ~ ~00 store result score !is_outboard_near constants run function highliner:game/board/check/is_outboard
execute if score !is_outboard_near constants matches 1 run return 1
execute positioned ~04 ~ ~00 store result score !is_outboard_near constants run function highliner:game/board/check/is_outboard
execute if score !is_outboard_near constants matches 1 run return 1
execute positioned ~00 ~ ~-4 store result score !is_outboard_near constants run function highliner:game/board/check/is_outboard
execute if score !is_outboard_near constants matches 1 run return 1
execute positioned ~00 ~ ~04 store result score !is_outboard_near constants run function highliner:game/board/check/is_outboard
execute if score !is_outboard_near constants matches 1 run return 1
return 0
