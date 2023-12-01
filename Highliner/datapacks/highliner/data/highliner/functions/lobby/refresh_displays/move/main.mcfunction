# Rotate display and interactions if nobody is near.
# Return 1 if rotated any angle, 0 otherwise.

# Temp factor = max(sqrt(distance_square) - 5, 0).
# If there is no non-spectating player in ..50 distance, set temp_square = 2500.
scoreboard players set !temp_square constants 3600
execute as @p[gamemode=!spectator,x=0.0,y=90.5,z=0.0,distance=..60] run function highliner:lobby/refresh_displays/move/dist_square
scoreboard players set !slow_sqrt constants 0
function highliner:utils/slow_math/sqrt
scoreboard players operation !temp_factor constants = !slow_sqrt constants
scoreboard players remove !temp_factor constants 5
scoreboard players operation !temp_factor constants > !0 constants

# Lobby rotate target speed: x -> x/1000 angle per tick. x = pow(2, temp_factor / 9) * 1500 if temp_factor > 0 else 0.
# Lobby rotate target distance: x -> x/1000 blocks per tick. x = temp_factor * 750
scoreboard players set !temp_speed_multiplier constants 1500
scoreboard players set !temp_distance_multiplier constants 750
scoreboard players set !temp_pow constants 1
scoreboard players set !temp_base constants 2
scoreboard players operation !temp_upper constants = !temp_factor constants
scoreboard players operation !temp_upper constants /= !9 constants
function highliner:utils/slow_math/pow
scoreboard players operation !lobby_rotate_target_speed constants = !temp_pow constants
scoreboard players operation !lobby_rotate_target_speed constants *= !temp_speed_multiplier constants
execute if score !temp_factor constants matches ..0 run scoreboard players set !lobby_rotate_target_speed constants 0
scoreboard players operation !lobby_rotate_target_distance constants = !temp_factor constants
scoreboard players operation !lobby_rotate_target_distance constants *= !temp_distance_multiplier constants

# Move current speed/distance towards target
execute if score !lobby_rotate_speed constants < !lobby_rotate_target_speed constants run scoreboard players set !temp_jump_ratio constants 250
execute unless score !lobby_rotate_speed constants < !lobby_rotate_target_speed constants run scoreboard players set !temp_jump_ratio constants 40
scoreboard players operation !lobby_rotate_speed constants > !0 constants
scoreboard players operation !lobby_rotate_distance constants > !0 constants
scoreboard players operation !lobby_rotate_diff_speed constants = !lobby_rotate_target_speed constants
scoreboard players operation !lobby_rotate_diff_speed constants -= !lobby_rotate_speed constants
scoreboard players operation !lobby_rotate_diff_distance constants = !lobby_rotate_target_distance constants
scoreboard players operation !lobby_rotate_diff_distance constants -= !lobby_rotate_distance constants
scoreboard players operation !lobby_rotate_diff_speed constants /= !temp_jump_ratio constants
scoreboard players operation !lobby_rotate_diff_distance constants /= !temp_jump_ratio constants
scoreboard players operation !lobby_rotate_speed constants += !lobby_rotate_diff_speed constants
scoreboard players operation !lobby_rotate_distance constants += !lobby_rotate_diff_distance constants
execute if score !lobby_rotate_speed constants > !lobby_rotate_target_speed constants run scoreboard players remove !lobby_rotate_speed constants 1
execute if score !lobby_rotate_speed constants < !lobby_rotate_target_speed constants run scoreboard players add !lobby_rotate_speed constants 1
execute if score !lobby_rotate_distance constants > !lobby_rotate_target_distance constants run scoreboard players remove !lobby_rotate_distance constants 1
execute if score !lobby_rotate_distance constants < !lobby_rotate_target_distance constants run scoreboard players add !lobby_rotate_distance constants 1

# If speed = 0, then just get out.
execute unless score !lobby_rotate_speed constants matches 1.. run return 0
execute as @e[tag=lobby_display] at @s run function highliner:lobby/refresh_displays/move/rotate
function highliner:lobby/create/tiny_interactions/move/main
return 1
