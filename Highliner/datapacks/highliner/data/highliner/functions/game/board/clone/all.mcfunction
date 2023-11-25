function highliner:game/board/reset/applied
function highliner:game/board/reset/translations
function highliner:game/get_turn
execute positioned -2 73 -2 if score !is_red_turn constants matches 1 run function highliner:game/board/apply/all_tiles {apply_func: "highliner:game/board/clone/red"}
execute positioned -2 73 -2 if score !is_red_turn constants matches 0 run function highliner:game/board/apply/all_tiles {apply_func: "highliner:game/board/clone/blue"}
