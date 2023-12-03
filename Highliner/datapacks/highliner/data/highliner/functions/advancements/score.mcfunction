# More than 100 new dominations in one move
scoreboard players operation !domination_diff_red constants = !dominated_red constants
scoreboard players operation !domination_diff_red constants -= !prev_dominated_red constants
scoreboard players operation !domination_diff_blue constants = !dominated_blue constants
scoreboard players operation !domination_diff_blue constants -= !prev_dominated_blue constants
execute if score !domination_diff_red constants matches 1.. run advancement grant @a[team=redteam] until highliner:ingame/domination/first
execute if score !domination_diff_blue constants matches 1.. run advancement grant @a[team=redteam] until highliner:ingame/domination/first
execute if score !domination_diff_red constants matches 100.. run advancement grant @a[team=redteam] until highliner:ingame/domination/huge_move
execute if score !domination_diff_blue constants matches 100.. run advancement grant @a[team=redteam] until highliner:ingame/domination/huge_move

# More than half dominated
execute if score !dominated_red constants >= !halftiles constants run advancement grant @a[team=redteam] until highliner:ingame/domination/more_than_half
execute if score !dominated_blue constants >= !halftiles constants run advancement grant @a[team=blueteam] until highliner:ingame/domination/more_than_half
