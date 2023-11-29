# This function is an unified logic of progressing both forward and backward.

# If target reached, return
execute if score !turn constants = !target_turn constants run function highliner:replay/progress/finalize
execute if score !turn constants = !target_turn constants run return 0

# Construct temporary arguments.
# Turn x's move is saved on highliner:current_match.diffs[x-1]. Assume until diffs[x-1] is applied.
# Forward: We have to apply diffs[current_turn]; Just do placing.
# Backward: We have to undo diffs[current_turn - 1]; Should restore all prev_states.
data modify storage highliner:temp_storage temp_args set value {}
execute if score !turn constants > !target_turn constants run scoreboard players remove !turn constants 1
execute store result storage highliner:temp_storage temp_args.diff_index int 1 run scoreboard players get !turn constants
execute if score !turn constants >= !target_turn constants run scoreboard players add !turn constants 1

# Single move; Including refreshing a board and change turn value.
function highliner:replay/progress/load with storage highliner:temp_storage temp_args
execute if score !turn constants < !target_turn constants run function highliner:replay/progress/forward/single
execute if score !turn constants > !target_turn constants run function highliner:replay/progress/backward/single

# Schedule for less lags
function highliner:game/board/bridgefill/main
schedule clear highliner:replay/progress/internal
schedule function highliner:replay/progress/internal 1t
