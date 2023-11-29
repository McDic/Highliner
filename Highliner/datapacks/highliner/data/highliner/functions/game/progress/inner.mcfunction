execute as @p[team=!spectators,scores={tried_placing=1..}] if entity @p[team=redteam] if entity @p[team=blueteam] run function highliner:game/placing/place/entry
execute as @p[team=!spectators,scores={tried_placing=1..}] unless entity @p[team=redteam] run tellraw @s {"translate":"highliner.error.cantplace.opponent_left","color":"yellow","italic":true,"with":[{"translate":"highliner.redteam"}]}
execute as @p[team=!spectators,scores={tried_placing=1..}] unless entity @p[team=blueteam] run tellraw @s {"translate":"highliner.error.cantplace.opponent_left","color":"yellow","italic":true,"with":[{"translate":"highliner.blueteam"}]}
execute as @p[team=!spectators,scores={tried_placing=1..}] run function highliner:game/items/reset
execute if entity @p[team=!spectators,scores={rotated=1..}] run scoreboard players operation !placing_direction constants *= !-1 constants
execute as @p[team=!spectators,scores={rotated=1..}] run function highliner:game/items/reset
execute as @p[team=!spectators,scores={turn=1,tried_placing=0}] at @s run function highliner:game/placing/preview_entry
