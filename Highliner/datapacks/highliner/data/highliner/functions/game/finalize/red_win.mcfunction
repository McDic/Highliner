execute if entity @p[team=redteam] run tellraw @a ["",{"translate":"highliner.win","with":[{"selector":"@p[team=redteam]","bold":true}],"color":"dark_red","bold":true}]
execute unless entity @p[team=redteam] run tellraw @a ["",{"translate":"highliner.win","with":[{"translate":"highliner.redteam","bold":true}],"color":"dark_red","bold":true}]
