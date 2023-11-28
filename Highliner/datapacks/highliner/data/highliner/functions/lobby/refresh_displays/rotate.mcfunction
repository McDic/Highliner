# Rotate display and interactions if nobody is near.
# Return 1 if rotated any angle, 0 otherwise.
# However, the interactions are not updated.
# Use `execute as @e[tag=lobby_display] run function THIS_FUNCTION`.

execute if entity @p[gamemode=!spectator,z=1,distance=..3.5] run return 0
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..7] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~1.5 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..10.5] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~1.5 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..14] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~3 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..17.5] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~6 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..21] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~12 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..24.5] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~24 ~
return 1
