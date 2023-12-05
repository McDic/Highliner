# Note; This function does not clear cache by itself. Also you should do execute positioned from `-2 73 -2`.
execute store result score !is_outboard constants run function highliner:game/board/check/is_outboard
execute unless score !is_outboard constants matches 0 run return 0
execute if block ~ 70 ~ minecraft:bedrock run return 0
setblock ~ 70 ~ minecraft:bedrock
$data modify storage highliner:system chainstack append value {apply_func: "$(apply_func)"}
$function $(apply_func)
execute positioned ~4 ~ ~ run function highliner:game/board/apply/all_tiles with storage highliner:system chainstack[-1]
execute positioned ~-4 ~ ~ run function highliner:game/board/apply/all_tiles with storage highliner:system chainstack[-1]
execute positioned ~ ~ ~4 run function highliner:game/board/apply/all_tiles with storage highliner:system chainstack[-1]
execute positioned ~ ~ ~-4 run function highliner:game/board/apply/all_tiles with storage highliner:system chainstack[-1]
data remove storage highliner:system chainstack[-1]
