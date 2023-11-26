# Cloning and modify virtual information
execute if score !placing_direction constants matches 1 positioned ~-4 ~ ~ run function highliner:game/board/clone/x33
execute if score !placing_direction constants matches 1 positioned ~04 ~ ~ run function highliner:game/board/clone/x33
execute if score !placing_direction constants matches 1 run fill ~-4 71 ~ ~7 71 ~3 minecraft:lime_wool
execute if score !placing_direction constants matches -1 positioned ~ ~ ~-4 run function highliner:game/board/clone/x33
execute if score !placing_direction constants matches -1 positioned ~ ~ ~04 run function highliner:game/board/clone/x33
execute if score !placing_direction constants matches -1 run fill ~ 71 ~-4 ~3 71 ~7 minecraft:lime_wool

# x-way checking
execute if score !placing_direction constants matches 1 store result score !x22_a constants positioned ~-8 ~ ~-4 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches 1 store result score !x22_b constants positioned ~-4 ~ ~-4 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches 1 store result score !x22_c constants positioned ~00 ~ ~-4 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches 1 store result score !x22_d constants positioned ~04 ~ ~-4 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches 1 store result score !x22_e constants positioned ~-8 ~ ~00 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches 1 store result score !x22_f constants positioned ~-4 ~ ~00 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches 1 store result score !x22_g constants positioned ~00 ~ ~00 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches 1 store result score !x22_h constants positioned ~04 ~ ~00 run function highliner:game/board/check/x22/single

# z-way checking
execute if score !placing_direction constants matches -1 store result score !x22_a constants positioned ~-4 ~ ~-8 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches -1 store result score !x22_b constants positioned ~-4 ~ ~-4 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches -1 store result score !x22_c constants positioned ~-4 ~ ~00 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches -1 store result score !x22_d constants positioned ~-4 ~ ~04 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches -1 store result score !x22_e constants positioned ~00 ~ ~-8 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches -1 store result score !x22_f constants positioned ~00 ~ ~-4 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches -1 store result score !x22_g constants positioned ~00 ~ ~00 run function highliner:game/board/check/x22/single
execute if score !placing_direction constants matches -1 store result score !x22_h constants positioned ~00 ~ ~04 run function highliner:game/board/check/x22/single

# Recover original information
function highliner:game/board/clone/single
execute if score !placing_direction constants matches 1 positioned ~-4 ~ ~ run function highliner:game/board/clone/single
execute if score !placing_direction constants matches 1 positioned ~04 ~ ~ run function highliner:game/board/clone/single
execute if score !placing_direction constants matches -1 positioned ~ ~ ~-4 run function highliner:game/board/clone/single
execute if score !placing_direction constants matches -1 positioned ~ ~ ~04 run function highliner:game/board/clone/single

# Return x22_a || x22_b || ... || x22_h => (1 if any x22 violation is detected. Otherwise 0).
execute if score !x22_a constants matches 0 if score !x22_b constants matches 0 if score !x22_c constants matches 0 if score !x22_d constants matches 0 if score !x22_e constants matches 0 if score !x22_f constants matches 0 if score !x22_g constants matches 0 if score !x22_h constants matches 0 run return 0
return 1
