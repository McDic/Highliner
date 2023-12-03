# If both players exist, reduce current timer.
function highliner:game/progress/load_all_scores
execute if entity @p[team=redteam] if entity @p[team=blueteam] run scoreboard players remove !timer_temp constants 1
execute if entity @p[team=redteam] if entity @p[team=blueteam] run scoreboard players add @a[team=!spectators,scores={turn=1}] thinking_time 1
advancement grant @a[team=!spectators,scores={thinking_time=1800..}] until highliner:ingame/long_thinking
function highliner:game/progress/timer/save

# If any player left, reduce those timer, regardless of their turn.
execute unless entity @p[team=redteam] run scoreboard players remove !timer_red constants 1
execute unless entity @p[team=blueteam] run scoreboard players remove !timer_blue constants 1

execute if score !timer_temp constants matches 11.. run worldborder warning distance 0
execute as @p[team=!spectators,scores={turn=1}] if score !timer_temp constants matches ..10 run function highliner:game/progress/timer/warn
execute if score !timer_temp constants matches 1.. run schedule function highliner:game/progress/timer/reduce 1s
