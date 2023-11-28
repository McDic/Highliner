execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:player_head"
$execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.tag set value {SkullOwner: "$(name)"}
