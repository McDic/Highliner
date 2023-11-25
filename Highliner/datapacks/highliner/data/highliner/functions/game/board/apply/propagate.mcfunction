# The reason why I separated this from `chain` is because `!is_outboard` will change on each recursive call.
$execute positioned ~4 ~ ~ run function highliner:game/board/apply/all_tiles {apply_func: "$(apply_func)"}
$execute positioned ~-4 ~ ~ run function highliner:game/board/apply/all_tiles {apply_func: "$(apply_func)"}
$execute positioned ~ ~ ~4 run function highliner:game/board/apply/all_tiles {apply_func: "$(apply_func)"}
$execute positioned ~ ~ ~-4 run function highliner:game/board/apply/all_tiles {apply_func: "$(apply_func)"}
