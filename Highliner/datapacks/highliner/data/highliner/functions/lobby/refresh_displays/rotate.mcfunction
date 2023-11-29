# Rotate display and interactions if nobody is near.
# Return 1 if rotated any angle, 0 otherwise.
# However, the interactions are not updated.
# Use `execute as @e[tag=lobby_display] run function THIS_FUNCTION`.

execute if entity @p[gamemode=!spectator,z=1,distance=..5] run return 0
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..5] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~1.5 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..12.5] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~1.5 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..20] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~3 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..27.5] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~6 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..35] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~12 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..42.5] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~24 ~
execute unless entity @p[gamemode=!spectator,x=0,y=90,z=1,distance=..50] as @s positioned as @s rotated as @s run tp @s ~ ~ ~ ~48 ~
return 1
