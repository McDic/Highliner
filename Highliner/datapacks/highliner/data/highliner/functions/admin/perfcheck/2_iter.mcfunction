execute if score !perfcheck_iteration constants matches ..0 run return 0
scoreboard players remove !perfcheck_iteration constants 1
function highliner:admin/perfcheck/1
schedule function highliner:admin/perfcheck/2_iter 1t
