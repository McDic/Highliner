# Assign new match ID to the current match (4 random 6-digit ints)
execute store result storage highliner:current_match match_id[0] int 1 run random value 0..999999
execute store result storage highliner:current_match match_id[1] int 1 run random value 0..999999
execute store result storage highliner:current_match match_id[2] int 1 run random value 0..999999
execute store result storage highliner:current_match match_id[3] int 1 run random value 0..999999
