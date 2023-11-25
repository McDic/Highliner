scoreboard players set !both_player_exists constants 0
execute if entity @p[team=redteam] if entity @p[team=blueteam] run scoreboard players set !both_player_exists constants 1
