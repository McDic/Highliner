function highliner:game/board/clone/all
function highliner:game/board/reset/applied
function highliner:game/board/reset/domination_cache
execute positioned -2 73 -2 run function highliner:game/board/apply/all_tiles {apply_func: "highliner:game/board/check/domination/start_from_edge"}

function highliner:game/get_turn
function highliner:game/board/reset/applied
scoreboard players set !domination_filled constants 0
execute positioned -2 73 -2 run function highliner:game/board/apply/all_tiles {apply_func: "highliner:game/board/check/domination/fill"}
execute unless score !domination_filled constants matches 0 as @a at @s run playsound minecraft:item.bucket.empty master @s ~ ~ ~ 10
