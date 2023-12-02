scoreboard players operation !replay_jump_speed constants *= !2 constants
execute unless score !replay_jump_speed constants matches 1..128 run scoreboard players set !replay_jump_speed constants 1
execute as @a[tag=replayer] run function highliner:game/items/reset
function highliner:lobby/refresh_displays/all
