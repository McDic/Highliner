$scoreboard players set !current_index constants $(index)
execute if score !current_index constants >= !prev_state_length constants run kill @s
execute if score !current_index constants >= !prev_state_length constants run return 0
$data modify storage highliner:temp_storage temp_prev_state set from storage highliner:temp_storage temp_diff.prev_states[$(index)]

execute store result score !prev_tile_state constants run data get storage highliner:temp_storage temp_prev_state.state
function highliner:replay/progress/backward/unit_tile

data modify storage highliner:temp_storage temp_args set value {index: 0}
scoreboard players add !current_index constants 1
execute store result storage highliner:temp_storage temp_args.index int 1 run scoreboard players get !current_index constants
function highliner:replay/progress/backward with storage highliner:temp_storage temp_args
