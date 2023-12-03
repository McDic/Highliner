# Reset game
function highliner:game/finalize/reset

# Delete all entities
function highliner:game/placing/kill_preview
tp @e[type=!minecraft:player] ~ -128 ~
kill @e[type=!minecraft:player]
