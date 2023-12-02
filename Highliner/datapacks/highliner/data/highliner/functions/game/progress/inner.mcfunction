# Always preview
execute as @p[team=!spectators,scores={turn=1,tried_placing=0}] at @s run function highliner:game/placing/preview_entry

# Load timer score
function highliner:game/progress/load_all_scores

# If placing item used?
scoreboard players set !placed constants 0
execute as @p[team=!spectators,scores={turn=1,tried_placing=1..}] if entity @p[team=redteam] if entity @p[team=blueteam] if score !timer_temp constants matches 1.. store result score !placed constants run function highliner:game/placing/place/main
execute as @p[team=!spectators,scores={turn=1,tried_placing=1..}] unless entity @p[team=redteam] run tellraw @s {"translate":"highliner.error.cantplace.opponent_left","color":"yellow","italic":true,"with":[{"translate":"highliner.redteam"}]}
execute as @p[team=!spectators,scores={turn=1,tried_placing=1..}] unless entity @p[team=blueteam] run tellraw @s {"translate":"highliner.error.cantplace.opponent_left","color":"yellow","italic":true,"with":[{"translate":"highliner.blueteam"}]}
execute as @a[team=!spectators,scores={tried_placing=1..}] run function highliner:game/items/reset

# If rotation?
execute if entity @p[team=!spectators,scores={rotated=1..}] run scoreboard players operation !placing_direction constants *= !-1 constants
execute as @p[team=!spectators,scores={rotated=1..}] run function highliner:game/items/reset
execute as @a[team=!spectators,scores={tried_placing=1..}] run function highliner:game/items/reset

# If placed? or timer <= 0? (timer <= 0 death is already covered in `in_turn`)
scoreboard players set !currently_skipped constants 0
execute if score !placed constants matches 1 run function highliner:game/progress/next_turn
execute unless score !placed constants matches 1 if score !timer_temp constants matches ..0 run function highliner:game/progress/skip_turn
