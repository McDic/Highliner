# Note; This function does not clear cache by itself.
execute store result score !is_outboard constants run function highliner:game/board/check/is_outboard
execute unless score !is_outboard constants matches 0 run return 0
execute if block ~ 70 ~ minecraft:bedrock run return 0
setblock ~ 70 ~ minecraft:bedrock
$function $(apply_func)
$function highliner:game/board/apply/propagate {apply_func: "$(apply_func)"}
