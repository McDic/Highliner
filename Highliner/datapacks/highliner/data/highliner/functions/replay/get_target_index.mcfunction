# You can use `!stored_saves` and `!target_replay_index` after calling this function.
execute store result score !stored_saves constants run data get storage highliner:saved_matches matches 1
scoreboard players operation !minimum_save_index constants = !stored_saves constants
scoreboard players operation !minimum_save_index constants *= !-1 constants
scoreboard players operation !selected_replay_index constants > !minimum_save_index constants
scoreboard players operation !selected_replay_index constants < !-1 constants
scoreboard players operation !target_replay_index constants = !selected_replay_index constants
scoreboard players operation !target_replay_index constants += !stored_saves constants
