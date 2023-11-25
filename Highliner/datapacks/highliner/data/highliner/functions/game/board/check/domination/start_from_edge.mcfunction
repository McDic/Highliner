execute store result score !is_edgeside constants run function highliner:game/board/check/is_edgeside
execute if score !is_edgeside constants matches 1 run function highliner:game/board/check/domination/search_outside
