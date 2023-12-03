function highliner:game/placing/exit

# Advancements
function highliner:advancements/winnings

# Dump the current match
execute if score !gamemode constants matches 1 run function highliner:game/record/dump

# Reset modes
scoreboard players set !in_turn constants 0
scoreboard players set !gamemode constants 0

# Reset everything
function highliner:game/finalize/reset
