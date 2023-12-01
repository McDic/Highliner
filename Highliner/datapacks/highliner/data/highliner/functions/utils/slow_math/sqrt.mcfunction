# Increment `!slow_sqrt` while `pow(!slow_sqrt, 2)` < `!temp_square`.
scoreboard players add !slow_sqrt constants 1
scoreboard players operation !temp_slow_square constants = !slow_sqrt constants
scoreboard players operation !temp_slow_square constants *= !slow_sqrt constants
execute if score !temp_slow_square constants >= !temp_square constants run return 0
function highliner:utils/slow_math/sqrt
