# Progress display
execute if entity @p[team=redteam] if entity @p[team=blueteam] run title @a actionbar {"translate":"highliner.gamestatus.current","color":"yellow","with":[{"score":{"name":"!turn","objective":"constants"},"color":"yellow"},{"score":{"name":"!max_turn","objective":"constants"},"color":"yellow"},{"selector":"@p[team=redteam]"},["",{"score":{"name":"!claimed_red","objective":"constants"},"color":"dark_red"},{"text":"(","color":"light_purple"},{"score":{"name":"!dominated_red","objective":"constants"},"color":"light_purple"},{"text":")","color":"light_purple"}],{"selector":"@p[team=blueteam]"},["",{"score":{"name":"!claimed_blue","objective":"constants"},"color":"aqua"},{"text":"(","color":"dark_blue"},{"score":{"name":"!dominated_blue","objective":"constants"},"color":"dark_blue"},{"text":")","color":"dark_blue"}]]}
execute if entity @p[team=redteam] unless entity @p[team=blueteam] run title @a actionbar {"translate":"highliner.gamestatus.current","color":"yellow","with":[{"score":{"name":"!turn","objective":"constants"},"color":"yellow"},{"score":{"name":"!max_turn","objective":"constants"},"color":"yellow"},{"selector":"@p[team=redteam]"},["",{"score":{"name":"!claimed_red","objective":"constants"},"color":"dark_red"},{"text":"(","color":"light_purple"},{"score":{"name":"!dominated_red","objective":"constants"},"color":"light_purple"},{"text":")","color":"light_purple"}],{"text":"???","color":"aqua"},["",{"score":{"name":"!claimed_blue","objective":"constants"},"color":"aqua"},{"text":"(","color":"dark_blue"},{"score":{"name":"!dominated_blue","objective":"constants"},"color":"dark_blue"},{"text":")","color":"dark_blue"}]]}
execute unless entity @p[team=redteam] if entity @p[team=blueteam] run title @a actionbar {"translate":"highliner.gamestatus.current","color":"yellow","with":[{"score":{"name":"!turn","objective":"constants"},"color":"yellow"},{"score":{"name":"!max_turn","objective":"constants"},"color":"yellow"},{"text":"???","color":"dark_red"},["",{"score":{"name":"!claimed_red","objective":"constants"},"color":"dark_red"},{"text":"(","color":"light_purple"},{"score":{"name":"!dominated_red","objective":"constants"},"color":"light_purple"},{"text":")","color":"light_purple"}],{"selector":"@p[team=blueteam]"},["",{"score":{"name":"!claimed_blue","objective":"constants"},"color":"aqua"},{"text":"(","color":"dark_blue"},{"score":{"name":"!dominated_blue","objective":"constants"},"color":"dark_blue"},{"text":")","color":"dark_blue"}]]}
function highliner:game/bossbar/update

# Surrender?
execute store result score !both_player_exists constants run function highliner:game/check_both_players
execute as @a[team=!spectators,scores={try_surrendered=1..}] run function highliner:game/surrender/confirm
execute as @a[team=!spectators,scores={surrendered=-1}] run function highliner:game/surrender/cancel

# Pause?
execute unless entity @p[team=redteam] if entity @p[team=blueteam] run function highliner:game/progress/pause/redleft
execute if entity @p[team=redteam] unless entity @p[team=blueteam] run function highliner:game/progress/pause/blueleft

# 0 Nothing, -1 Draw
# 1 red wins (blue left, deprecated), 2 red wins (surrender), 3 red wins (blue ran out of time), 7 red wins(halftile dominated)
# 4 blue wins (red left, deprecated), 5 blue wins (surrender), 6 blue wins (red ran out of time), 8 blue wins(halftile dominated)
scoreboard players set !cold_end_flag constants 0
execute unless entity @p[team=redteam] unless entity @p[team=blueteam] run scoreboard players set !cold_end_flag constants -1
# execute unless entity @p[team=redteam] if entity @p[team=blueteam] run scoreboard players set !cold_end_flag constants 4
# execute if entity @p[team=redteam] unless entity @p[team=blueteam] run scoreboard players set !cold_end_flag constants 1
execute if score !cold_end_flag constants matches 0 if score !timer_red constants matches ..0 unless entity @p[team=redteam] run scoreboard players set !cold_end_flag constants 6
execute if score !cold_end_flag constants matches 0 if score !timer_blue constants matches ..0 unless entity @p[team=blueteam] run scoreboard players set !cold_end_flag constants 3
execute if score !cold_end_flag constants matches 0 if score !timer_red constants matches ..0 if entity @p[team=readteam] if score !timeout_penalty constants matches 0 run scoreboard players set !cold_end_flag constants 6
execute if score !cold_end_flag constants matches 0 if score !timer_blue constants matches ..0 if entity @p[team=blueteam] if score !timeout_penalty constants matches 0 run scoreboard players set !cold_end_flag constants 3
execute if score !cold_end_flag constants matches 0 if entity @p[team=redteam,scores={surrendered=1..}] unless score !both_player_exists constants matches 0 run scoreboard players set !cold_end_flag constants 5
execute if score !cold_end_flag constants matches 0 if entity @p[team=blueteam,scores={surrendered=1..}] unless score !both_player_exists constants matches 0 run scoreboard players set !cold_end_flag constants 2
execute if score !cold_end_flag constants matches 0 if entity @p[team=redteam,scores={surrendered=1..}] if score !both_player_exists constants matches 0 run scoreboard players set !cold_end_flag constants -2
execute if score !cold_end_flag constants matches 0 if entity @p[team=blueteam,scores={surrendered=1..}] if score !both_player_exists constants matches 0 run scoreboard players set !cold_end_flag constants -2
execute if score !cold_end_flag constants matches 0 if score !dominated_red constants >= !halftiles constants run scoreboard players set !cold_end_flag constants 7
execute if score !cold_end_flag constants matches 0 if score !dominated_blue constants >= !halftiles constants run scoreboard players set !cold_end_flag constants 8

# Tellraw
execute if score !cold_end_flag constants matches -2 run tellraw @a {"translate":"highliner.coldend.surrender_while_left","color":"yellow","bold":true}
execute if score !cold_end_flag constants matches -1 run tellraw @a {"translate":"highliner.coldend.both_left","color":"yellow","bold":true}
execute if score !cold_end_flag constants matches 2 run tellraw @a {"translate":"highliner.coldend.surrendered","color":"dark_red","bold":true,"with":[{"selector":"@p[team=blueteam]"}]}
execute if score !cold_end_flag constants matches 3 unless entity @p[team=blueteam] run tellraw @a {"translate":"highliner.coldend.timeout","color":"dark_red","bold":true,"with":[{"translate":"highliner.blueteam"}]}
execute if score !cold_end_flag constants matches 3 if entity @p[team=blueteam] run tellraw @a {"translate":"highliner.coldend.timeout","color":"dark_red","bold":true,"with":[{"selector":"@p[team=blueteam]"}]}
execute if score !cold_end_flag constants matches 5 run tellraw @a {"translate":"highliner.coldend.surrendered","color":"aqua","bold":true,"with":[{"selector":"@p[team=redteam]"}]}
execute if score !cold_end_flag constants matches 6 unless entity @p[team=redteam] run tellraw @a {"translate":"highliner.coldend.timeout","color":"aqua","bold":true,"with":[{"translate":"highliner.redteam"}]}
execute if score !cold_end_flag constants matches 6 if entity @p[team=redteam] run tellraw @a {"translate":"highliner.coldend.timeout","color":"aqua","bold":true,"with":[{"selector":"@p[team=redteam]"}]}
execute if score !cold_end_flag constants matches 7 run tellraw @a {"translate":"highliner.coldend.many_dominated","color":"dark_red","bold":true,"with":[{"selector":"@p[team=redteam]"}]}
execute if score !cold_end_flag constants matches 8 run tellraw @a {"translate":"highliner.coldend.many_dominated","color":"aqua","bold":true,"with":[{"selector":"@p[team=blueteam]"}]}

# Cold ends
execute if score !cold_end_flag constants matches -2..-1 run function highliner:game/finalize/draw
execute if score !cold_end_flag constants matches 1..3 run function highliner:game/finalize/red_win
execute if score !cold_end_flag constants matches 4..6 run function highliner:game/finalize/blue_win
execute if score !cold_end_flag constants matches 7 run function highliner:game/finalize/red_win
execute if score !cold_end_flag constants matches 8 run function highliner:game/finalize/blue_win

# Go to inner progress
execute unless score !cold_end_flag constants matches 0 run function highliner:game/finalize/common
execute if score !cold_end_flag constants matches 0 run function highliner:game/progress/inner
