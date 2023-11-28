scoreboard players operation !replay_jump_speed constants *= !2 constants
execute unless score !replay_jump_speed constants matches 1..32 run scoreboard players set !replay_jump_speed constants 1
execute as @a run function highliner:game/reset_items
function highliner:lobby/refresh_displays/all
