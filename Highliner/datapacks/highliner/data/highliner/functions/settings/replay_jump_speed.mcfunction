scoreboard players operation !replay_jump_speed constants *= !2 constants
execute if score !replay_jump_speed constants matches ..0 run scoreboard players set !replay_jump_speed constants 1
execute if score !replay_jump_speed constants matches 32.. run scoreboard players set !replay_jump_speed constants 32
