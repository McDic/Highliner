# Dump the current match to the record, and then remove too old records.
# If current record is empty, then do not save the progress.
execute store result score !progressed_turns constants run data get storage highliner:current_match diffs
execute if score !progressed_turns constants matches ..0 run return 0
data modify storage highliner:saved_matches matches append from storage highliner:current_match
function highliner:game/record/pop_front
function highliner:game/record/init
