execute store result score !is_outboard constants run function highliner:game/board/check/is_outboard
execute if score !is_outboard constants matches 1 run return 0
execute if block ~ 69 ~ minecraft:bedrock run return 0

# Mark as discovered
setblock ~ 69 ~ minecraft:bedrock

# Propagate only if current tile is either air block or opponent tiles
execute store result score !current_tile constants run function highliner:game/board/check/current_tile
execute if score !current_tile constants matches 1..3 run return 0
execute positioned ~-4 ~ ~00 run function highliner:game/board/check/domination/search_outside
execute positioned ~04 ~ ~00 run function highliner:game/board/check/domination/search_outside
execute positioned ~00 ~ ~-4 run function highliner:game/board/check/domination/search_outside
execute positioned ~00 ~ ~04 run function highliner:game/board/check/domination/search_outside
