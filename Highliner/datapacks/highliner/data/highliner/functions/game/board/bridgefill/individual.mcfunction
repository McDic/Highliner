# Assuming clone is already done.
# function highliner:game/board/clone/single
execute store result score !current_tile constants run function highliner:game/board/check/current_tile
execute if score !current_tile constants matches 0..1 run return 0
execute if score !current_tile constants matches 3..4 run return 0
execute if score !current_tile constants matches 6 run return 0
execute unless blocks ~ 73 ~1 ~ 73 ~2 ~1 73 ~1 all run clone ~-1 73 ~1 ~-1 73 ~2 ~ 73 ~1
execute unless blocks ~3 73 ~1 ~3 73 ~2 ~1 73 ~1 all run clone ~4 73 ~1 ~4 73 ~2 ~3 73 ~1
execute unless blocks ~1 73 ~ ~2 73 ~ ~1 73 ~1 all run clone ~1 73 ~-1 ~2 73 ~-1 ~1 73 ~
execute unless blocks ~1 73 ~3 ~2 73 ~3 ~1 73 ~1 all run clone ~1 73 ~4 ~2 73 ~4 ~1 73 ~3
