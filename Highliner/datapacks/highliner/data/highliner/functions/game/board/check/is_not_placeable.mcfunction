# Check if the given tile is NOT placeable.
# Return 0 if placeable.
# Return 1 if out of the board.
# Return 2 if tried to overlap.
# Return 3 if useless move.
# Return 4 if 2x2 violated.

# Out of the board
execute store result score !is_outboard_center constants run function highliner:game/board/check/is_outboard
execute if score !placing_direction constants matches 1 positioned ~-4 ~ ~ store result score !is_outboard_minus constants run function highliner:game/board/check/is_outboard
execute if score !placing_direction constants matches 1 positioned ~04 ~ ~ store result score !is_outboard_plus constants run function highliner:game/board/check/is_outboard
execute if score !placing_direction constants matches -1 positioned ~ ~ ~-4 store result score !is_outboard_minus constants run function highliner:game/board/check/is_outboard
execute if score !placing_direction constants matches -1 positioned ~ ~ ~04 store result score !is_outboard_plus constants run function highliner:game/board/check/is_outboard
execute if score !is_outboard_minus constants matches 1 run return 1
execute if score !is_outboard_center constants matches 1 run return 1
execute if score !is_outboard_plus constants matches 1 run return 1

# Overlapping non-valid tiles
function highliner:game/board/clone/single
execute store result score !current_tile_center constants run function highliner:game/board/check/current_tile
execute if score !placing_direction constants matches 1 positioned ~-4 ~ ~ run function highliner:game/board/clone/single
execute if score !placing_direction constants matches 1 positioned ~-4 ~ ~ store result score !current_tile_minus constants run function highliner:game/board/check/current_tile
execute if score !placing_direction constants matches 1 positioned ~04 ~ ~ run function highliner:game/board/clone/single
execute if score !placing_direction constants matches 1 positioned ~04 ~ ~ store result score !current_tile_plus constants run function highliner:game/board/check/current_tile
execute if score !placing_direction constants matches -1 positioned ~ ~ ~-4 run function highliner:game/board/clone/single
execute if score !placing_direction constants matches -1 positioned ~ ~ ~-4 store result score !current_tile_minus constants run function highliner:game/board/check/current_tile
execute if score !placing_direction constants matches -1 positioned ~ ~ ~04 run function highliner:game/board/clone/single
execute if score !placing_direction constants matches -1 positioned ~ ~ ~04 store result score !current_tile_plus constants run function highliner:game/board/check/current_tile
scoreboard players set !tried_bridging constants 0
execute store result score !tried_bridging constants if score !current_tile_center constants matches 4 if score !current_tile_plus constants matches 1 if score !current_tile_minus constants matches 1
execute if score !tried_bridging constants matches 0 unless score !current_tile_center constants matches 0..1 run return 2
execute if score !tried_bridging constants matches 0 unless score !current_tile_minus constants matches 0..1 run return 2
execute if score !tried_bridging constants matches 0 unless score !current_tile_plus constants matches 0..1 run return 2

# Useless move
execute if score !current_tile_center constants matches 1 if score !current_tile_minus constants matches 1 if score !current_tile_plus constants matches 1 run return 3

# 2x2 violated
scoreboard players set !x22_violated constants 0
execute if score !disable_x22 constants matches 1 store result score !x22_violated constants run function highliner:game/board/check/x22/main
execute if score !x22_violated constants matches 1 run return 4

# Possible
return 0
