execute if entity @p[team=redteam] if entity @p[team=blueteam] run function highliner:game/progress/start_turn/main
execute unless entity @p[team=redteam] if entity @p[team=blueteam] run function highliner:game/progress/pause/redleft
execute unless entity @p[team=redteam] if entity @p[team=blueteam] run schedule function highliner:game/progress/start_turn/wait 1s replace
execute if entity @p[team=redteam] unless entity @p[team=blueteam] run function highliner:game/progress/pause/blueleft
execute if entity @p[team=redteam] unless entity @p[team=blueteam] run schedule function highliner:game/progress/start_turn/wait 1s replace
execute unless entity @p[team=redteam] unless entity @p[team=blueteam] run tellraw @a {"translate":"highliner.error.turnswitch.bothleft", "color":"yellow", "italic":true}
execute unless entity @p[team=redteam] unless entity @p[team=blueteam] run function highliner:game/finalize/reset
