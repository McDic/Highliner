# Create a new match.
data remove storage highliner:current_match diffs
data remove storage highliner:current_match settings
data merge storage highliner:current_match {diffs: [], settings: {}, match_id: [0, 0, 0, 0]}

# About settings, I copy very few of them into the storage for following reasons.
# - Game speed will not be copied, but always use min(new setting's max time, time left) on game start.
# - Max turn will not be copied, but will require (new setting's max turn) > (current_match's last turn) on game start.
# - 2x2 will be copied, because this is needed on proper replay.
execute store result storage highliner:current_match settings.disable_x22 int 1 run scoreboard players get !disable_x22 constants
# - Forced first player, Instant placing and tile theme will not be copied, because they are useless.

function highliner:game/record/assign_match_id
