# Use `execute as @e[tag=lobby_display] run function THIS_FUNCTION`.
scoreboard players operation !lobby_rotate_temp_speed constants = !lobby_rotate_speed constants
scoreboard players operation !lobby_rotate_temp_distance constants = !lobby_rotate_distance constants
execute rotated as @s run tp @s 0.0 90.5 0.0 ~ ~
execute at @s run function highliner:lobby/refresh_displays/move/binary_lift/rotation
execute at @s run function highliner:lobby/refresh_displays/move/binary_lift/distancing
