# Assuming clone is already done.
# Checking (x, z), (x+4, z), (x, z+4), (x+4, z+4).
# Return 1 if all 4 tiles are my normal/bridge tiles(= x22 violation detected). Otherwise 0.

execute store result score !tile00 constants positioned ~0 ~ ~0 run function highliner:game/board/check/current_tile
execute store result score !tile01 constants positioned ~0 ~ ~4 run function highliner:game/board/check/current_tile
execute store result score !tile10 constants positioned ~4 ~ ~0 run function highliner:game/board/check/current_tile
execute store result score !tile11 constants positioned ~4 ~ ~4 run function highliner:game/board/check/current_tile
execute if score !tile00 constants matches 1..2 if score !tile01 constants matches 1..2 if score !tile10 constants matches 1..2 if score !tile11 constants matches 1..2 run return 1
return 0
