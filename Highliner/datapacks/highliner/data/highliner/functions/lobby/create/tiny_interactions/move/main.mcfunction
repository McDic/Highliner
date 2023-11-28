execute as @e[type=minecraft:block_display,tag=lobby_display_root,limit=1] positioned as @s rotated as @s run tp @e[type=minecraft:interaction,tag=lobby_interaction] ~ ~-0.55 ~ ~ ~
execute as @e[type=minecraft:interaction,tag=lobby_interaction] at @s run tp @s ^-0.125 ^ ^

execute as @e[type=minecraft:interaction,tag=lobby_interaction,scores={interaction_offset=0..}] at @s run tp @s ^ ^ ^0.125
execute as @e[type=minecraft:interaction,tag=lobby_interaction,scores={interaction_offset=..-1}] at @s run tp @s ^ ^ ^-0.125

execute as @e[type=minecraft:interaction,tag=lobby_interaction_leftarrow,scores={interaction_offset=0..}] at @s run tp @s ^-1 ^ ^
execute as @e[type=minecraft:interaction,tag=lobby_interaction_leftarrow,scores={interaction_offset=..-1}] at @s run tp @s ^2 ^ ^
execute as @e[type=minecraft:interaction,tag=lobby_interaction_rightarrow,scores={interaction_offset=0..}] at @s run tp @s ^2 ^ ^
execute as @e[type=minecraft:interaction,tag=lobby_interaction_rightarrow,scores={interaction_offset=..-1}] at @s run tp @s ^-1 ^ ^
execute as @e[type=minecraft:interaction,tag=lobby_interaction_down] at @s run tp @s ^1 ^ ^

execute as @e[type=minecraft:interaction,tag=lobby_interaction] at @s run function highliner:lobby/create/tiny_interactions/move/individual
