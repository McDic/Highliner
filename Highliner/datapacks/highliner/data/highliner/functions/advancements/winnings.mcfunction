# Simple win counts
execute as @a[team=!spectators] if score @s wincount matches 1.. run advancement grant @s until highliner:win/1
execute as @a[team=!spectators] if score @s wincount matches 20.. run advancement grant @s until highliner:win/20

# win/absolutely
function highliner:game/get_turn
scoreboard players operation !red100 constants = !claimed_red constants
scoreboard players add !red100 constants 100
scoreboard players operation !blue100 constants = !claimed_blue constants
scoreboard players add !blue100 constants 100
execute if score !blue100 constants <= !claimed_red constants run advancement grant @a[team=redteam] until highliner:win/absolutely
execute if score !red100 constants <= !claimed_blue constants run advancement grant @a[team=blueteam] until highliner:win/absolutely
