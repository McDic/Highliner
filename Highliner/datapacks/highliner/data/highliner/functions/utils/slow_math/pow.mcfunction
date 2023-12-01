# !temp_pow *= !temp_base if !temp_upper-- > 1.
execute if score !temp_upper constants matches ..0 run return 0
scoreboard players operation !temp_pow constants *= !temp_base constants
scoreboard players remove !temp_upper constants 1
function highliner:utils/slow_math/pow
