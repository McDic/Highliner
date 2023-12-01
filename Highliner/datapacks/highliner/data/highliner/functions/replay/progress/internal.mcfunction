# This function is an unified logic of progressing both forward and backward.
# Single call of internal will perform single move.

# If target reached, return immediately.
execute if score !turn constants = !target_turn constants run function highliner:replay/progress/finalize
execute if score !turn constants = !target_turn constants run return 0

# Construct temporary arguments.
# Turn x's move is saved on highliner:current_match.diffs[x-1]. Assume until diffs[x-1] is applied.
# Forward: current_turn -> current_turn + 1.
# - (Before optimization) Just do placing.
# - (After optimization) Restore all state_changes of diffs[current_turn]. (need after_state)
# Backward: current_turn -> current_turn - 1. We have to undo diffs[current_turn - 1];
# - Should restore all state_changes of diffs[current_turn - 1]. (need before_state)
data modify storage highliner:temp_storage temp_args set value {}
execute if score !turn constants > !target_turn constants run scoreboard players remove !turn constants 1
execute store result storage highliner:temp_storage temp_args.diff_index int 1 run scoreboard players get !turn constants
execute if score !turn constants >= !target_turn constants run scoreboard players add !turn constants 1

# Single move; Including refreshing a board and change turn value.
function highliner:replay/progress/load with storage highliner:temp_storage temp_args
execute store result score !state_changes_length constants run data get storage highliner:temp_storage temp_diff.state_changes
function highliner:game/get_turn
execute summon minecraft:marker run function highliner:replay/progress/unit_diff {index: 0}
execute if score !turn constants < !target_turn constants run scoreboard players add !turn constants 1
execute if score !turn constants > !target_turn constants run scoreboard players remove !turn constants 1

# Schedule for less lags
function highliner:game/board/bridgefill/main
schedule clear highliner:replay/progress/internal
schedule function highliner:replay/progress/internal 1t
