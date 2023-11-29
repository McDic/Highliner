# This removes diff[index, ...] where diff[index] means index+1 -th turn.
# Parameters: $(index)
$execute store success score !removal_tried constants run data remove storage highliner:current_match diffs[$(index)]
$execute unless score !removal_tried constants matches 0 run function highliner:game/record/remove_futures {index: "$(index)"}
