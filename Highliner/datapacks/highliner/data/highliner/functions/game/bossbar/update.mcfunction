# Title display
execute if entity @p[team=redteam] run bossbar set highliner:time_red name {"translate":"highliner.bossbar.time_left_spec","with":[{"selector":"@p[team=redteam]"}],"color":"dark_red"}
execute if entity @p[team=blueteam] run bossbar set highliner:time_blue name {"translate":"highliner.bossbar.time_left_spec","with":[{"selector":"@p[team=blueteam]"}],"color":"aqua"}
execute unless entity @p[team=redteam] run bossbar set highliner:time_red name {"translate":"highliner.bossbar.time_left_spec","with":[{"translate":"highliner.redteam"}],"color":"dark_red"}
execute unless entity @p[team=blueteam] run bossbar set highliner:time_blue name {"translate":"highliner.bossbar.time_left_spec","with":[{"translate":"highliner.blueteam"}],"color":"aqua"}
execute store result bossbar highliner:time_red value run scoreboard players get !timer_red constants
execute store result bossbar highliner:time_blue value run scoreboard players get !timer_blue constants

# Focus on colored
function highliner:game/get_turn
execute if score !is_red_turn constants matches 1 run bossbar set highliner:time_red color red
execute if score !is_red_turn constants matches 1 run bossbar set highliner:time_blue color yellow
execute if score !is_red_turn constants matches 0 run bossbar set highliner:time_red color yellow
execute if score !is_red_turn constants matches 0 run bossbar set highliner:time_blue color blue

# Relative scores
scoreboard players set !total_score constants 0
scoreboard players operation !total_score constants += !claimed_red constants
scoreboard players operation !total_score constants += !claimed_blue constants
execute if score !total_score constants matches ..0 run scoreboard players set !total_score constants 99999
execute store result bossbar highliner:score_red max run scoreboard players get !total_score constants
execute store result bossbar highliner:score_blue max run scoreboard players get !total_score constants
execute store result bossbar highliner:score_red value run scoreboard players get !claimed_red constants
execute store result bossbar highliner:score_blue value run scoreboard players get !claimed_blue constants

# Reorder
bossbar set highliner:time_red visible false
bossbar set highliner:time_blue visible false
bossbar set highliner:score_red visible false
bossbar set highliner:score_blue visible false
execute if score !is_red_turn constants matches 1 run bossbar set highliner:time_red visible true
execute if score !is_red_turn constants matches 1 run bossbar set highliner:time_blue visible true
execute if score !is_red_turn constants matches 0 run bossbar set highliner:time_blue visible true
execute if score !is_red_turn constants matches 0 run bossbar set highliner:time_red visible true
bossbar set highliner:score_red visible true
bossbar set highliner:score_blue visible true
