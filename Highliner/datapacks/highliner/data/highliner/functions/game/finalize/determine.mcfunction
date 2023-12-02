# This function is called to end the game whenever max turn is reached.

# Flush if needed
function highliner:game/board/refresh
function highliner:game/record/diff/flush

# 0 tie, 1 red wins, 2 blue wins
function highliner:game/progress/calculate_score/main
scoreboard players set !gameresult constants 0
execute if score !claimed_red constants > !claimed_blue constants run scoreboard players set !gameresult constants 1
execute if score !claimed_red constants < !claimed_blue constants run scoreboard players set !gameresult constants 2
execute if score !claimed_red constants = !claimed_blue constants if score !dominated_red constants > !dominated_blue constants run scoreboard players set !gameresult constants 1
execute if score !claimed_red constants = !claimed_blue constants if score !dominated_red constants < !dominated_blue constants run scoreboard players set !gameresult constants 2
tellraw @a ["",{"translate":"highliner.finalize","color":"yellow","with":[{"selector":"@p[team=redteam]"},{"score":{"name":"!claimed_red","objective":"constants"},"color":"dark_red"},{"score":{"name":"!dominated_red","objective":"constants"},"color":"dark_red"},{"selector":"@p[team=blueteam]"},{"score":{"name":"!claimed_blue","objective":"constants"},"color":"aqua"},{"score":{"name":"!dominated_blue","objective":"constants"},"color":"aqua"}]}]
execute if score !gameresult constants matches 0 run function highliner:game/finalize/draw
execute if score !gameresult constants matches 1 run function highliner:game/finalize/red_win
execute if score !gameresult constants matches 2 run function highliner:game/finalize/blue_win
function highliner:game/finalize/common
