scoreboard players add !current_lobby_menu constants 1
execute if score !current_lobby_menu constants matches ..3 as @s at @s run playsound minecraft:item.armor.equip_generic master @s ~ ~ ~
execute if score !current_lobby_menu constants matches ..-2 run scoreboard players set !current_lobby_menu constants -1
execute if score !current_lobby_menu constants matches 4.. run scoreboard players set !current_lobby_menu constants 3
function highliner:lobby/refresh_displays/all
