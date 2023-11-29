# Return 1 if inboard, otherwise 0 (out of the board)
execute at @s store result score !is_outboard constants run function highliner:game/board/check/is_outboard
execute if score !is_outboard constants matches 1 run return 0
function highliner:utils/gps
execute if score @s gps_y matches 73.. run return 0
return 1
