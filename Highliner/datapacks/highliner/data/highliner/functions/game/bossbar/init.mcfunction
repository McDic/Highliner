function highliner:game/bossbar/clear

bossbar add highliner:time_red {"text":""}
bossbar add highliner:time_blue {"text":""}
bossbar add highliner:score_red {"translate":"highliner.bossbar.relative_score","color":"dark_red"}
bossbar add highliner:score_blue {"translate":"highliner.bossbar.relative_score","color":"aqua"}
bossbar set highliner:time_red color yellow
bossbar set highliner:time_blue color yellow
bossbar set highliner:score_red color red
bossbar set highliner:score_blue color blue
bossbar set highliner:time_red players @a
bossbar set highliner:time_blue players @a
bossbar set highliner:score_red players @a[team=redteam]
bossbar set highliner:score_blue players @a[team=blueteam]
execute if score !gamespeed constants matches 0 run bossbar set highliner:time_red style notched_20
execute if score !gamespeed constants matches 0 run bossbar set highliner:time_blue style notched_20
execute if score !gamespeed constants matches 1 run bossbar set highliner:time_red style notched_12
execute if score !gamespeed constants matches 1 run bossbar set highliner:time_blue style notched_12
execute if score !gamespeed constants matches 2 run bossbar set highliner:time_red style notched_6
execute if score !gamespeed constants matches 2 run bossbar set highliner:time_blue style notched_6

execute store result bossbar highliner:turn max run scoreboard players get !max_turn constants
execute store result bossbar highliner:time_red max run scoreboard players get !gamespeed_maxtime constants
execute store result bossbar highliner:time_blue max run scoreboard players get !gamespeed_maxtime constants
execute store result bossbar highliner:time_red_spec max run scoreboard players get !gamespeed_maxtime constants
execute store result bossbar highliner:time_blue_spec max run scoreboard players get !gamespeed_maxtime constants

function highliner:game/bossbar/update
