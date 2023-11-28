# Team count check
scoreboard players set !redteam_count constants 0
scoreboard players set !blueteam_count constants 0
execute as @a[team=redteam] run scoreboard players add !redteam_count constants 1
execute as @a[team=blueteam] run scoreboard players add !blueteam_count constants 1
scoreboard players set !teamcount_ok constants 0
execute if score !redteam_count constants matches 1 if score !blueteam_count constants matches 1 run scoreboard players set !teamcount_ok constants 1
execute unless score !teamcount_ok constants matches 1 run tellraw @a {"translate":"highliner.error.need2p","color":"yellow","italic":true}
execute unless score !teamcount_ok constants matches 1 run return 0

# All ok
return 1
