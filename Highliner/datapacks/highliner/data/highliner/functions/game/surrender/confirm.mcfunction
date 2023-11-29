scoreboard players enable @s surrendered
tellraw @s {"translate":"highliner.message.surrender.ask","italic":true,"color":"yellow","with":[{"translate":"highliner.message.surrender.yes","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger surrendered set 1"}},{"translate":"highliner.message.surrender.no","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger surrendered set -1"}}]}
scoreboard players reset @s try_surrendered
function highliner:game/items/reset
