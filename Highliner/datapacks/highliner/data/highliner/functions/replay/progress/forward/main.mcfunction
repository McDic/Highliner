scoreboard players set !moving_turn_in_progress constants 1
function highliner:game/reset_items

scoreboard players operation !target_turn constants = !turn constants
scoreboard players operation !target_turn constants += !replay_jump_speed constants
scoreboard players operation !target_turn constants < !saved_max_turn constants
scoreboard players operation !target_turn constants > !1 constants

execute if score !replay_jump_speed constants matches 2.. unless score !target_turn constants = !turn constants run tellraw @a {"text":"highliner.message.replay.announce_movement","color":"yellow","italic":true,"with":[{"score":{"objective":"constants","name":"!turn"}},{"score":{"objective":"constants","name":"!target_turn"}}]}
function highliner:replay/progress/internal
