execute store result score !prev_state_length constants run data get storage highliner:temp_storage temp_diff.prev_states
function highliner:game/get_turn
execute summon minecraft:marker run function highliner:replay/progress/backward/recursive {index: 0}
function highliner:game/board/bridgefill/main
scoreboard players remove !turn constants 1
