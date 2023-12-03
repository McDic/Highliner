execute if entity @p[team=blueteam] run tellraw @a ["",{"translate":"highliner.win", "with":[{"selector":"@p[team=blueteam]","bold":true}], "color":"aqua", "bold":true}]
execute unless entity @p[team=blueteam] run tellraw @a ["",{"translate":"highliner.win", "with":[{"translate":"highliner.blueteam","bold":true}], "color":"aqua", "bold":true}]
scoreboard players add @p[team=blueteam] wincount 1
