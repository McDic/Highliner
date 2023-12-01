# This function recursively iterates all state changes of target diff, and apply it.

# Load this state change
$scoreboard players set !current_index constants $(index)
execute if score !current_index constants >= !state_changes_length constants run kill @s
execute if score !current_index constants >= !state_changes_length constants run return 0
$data modify storage highliner:temp_storage temp_state_change set from storage highliner:temp_storage temp_diff.state_changes[$(index)]

# Apply unit tile
execute if score !turn constants < !target_turn constants run data modify storage highliner:temp_storage temp_state_change.target_state set from storage highliner:temp_storage temp_state_change.after_state
execute if score !turn constants > !target_turn constants run data modify storage highliner:temp_storage temp_state_change.target_state set from storage highliner:temp_storage temp_state_change.before_state
function highliner:replay/progress/unit_tile with storage highliner:temp_storage temp_state_change

# Go next state change
data modify storage highliner:temp_storage temp_args set value {index: 0}
scoreboard players add !current_index constants 1
execute store result storage highliner:temp_storage temp_args.index int 1 run scoreboard players get !current_index constants
function highliner:replay/progress/unit_diff with storage highliner:temp_storage temp_args
