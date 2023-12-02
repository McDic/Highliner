execute if score !gamemode constants matches 1..2 run return 0
execute if score !gamemode constants matches 3 unless score !current_lobby_menu constants matches 3 run return 0
execute if score !current_lobby_menu constants matches -1 run return 0

execute at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~

execute if score !current_lobby_menu constants matches 0 if score !current_lobby_selection constants matches 4 run function highliner:game/start/main
execute if score !current_lobby_menu constants matches 0 if score !current_lobby_selection constants matches 3 run function highliner:tutorial/enter
execute store result score !i_am_red constants if entity @s[team=redteam]
execute store result score !i_am_blue constants if entity @s[team=blueteam]
execute if score !current_lobby_menu constants matches 0 if score !current_lobby_selection constants matches 2 if score !i_am_red constants matches 0 run function highliner:lobby/join_red
execute if score !current_lobby_menu constants matches 0 if score !current_lobby_selection constants matches 2 unless score !i_am_red constants matches 0 run function highliner:lobby/leave_red
execute if score !current_lobby_menu constants matches 0 if score !current_lobby_selection constants matches 1 if score !i_am_blue constants matches 0 run function highliner:lobby/join_blue
execute if score !current_lobby_menu constants matches 0 if score !current_lobby_selection constants matches 1 unless score !i_am_blue constants matches 0 run function highliner:lobby/leave_blue

execute if score !current_lobby_menu constants matches 1 if score !current_lobby_selection constants matches 4 run function highliner:settings/gamespeed
execute if score !current_lobby_menu constants matches 1 if score !current_lobby_selection constants matches 3 run function highliner:settings/maxturn
execute if score !current_lobby_menu constants matches 1 if score !current_lobby_selection constants matches 2 run function highliner:settings/x22
execute if score !current_lobby_menu constants matches 1 if score !current_lobby_selection constants matches 1 run function highliner:settings/forced_first_player

execute if score !current_lobby_menu constants matches 2 if score !current_lobby_selection constants matches 3 run function highliner:settings/tile_theme
execute if score !current_lobby_menu constants matches 2 if score !current_lobby_selection constants matches 2 run function highliner:settings/instant_placing
execute if score !current_lobby_menu constants matches 2 if score !current_lobby_selection constants matches 1 run reload

execute if score !current_lobby_menu constants matches 3 if score !gamemode constants matches 0 if score !current_lobby_selection constants matches 3 run function highliner:replay/start
execute if score !current_lobby_menu constants matches 3 if score !gamemode constants matches 0 if score !current_lobby_selection constants matches 2 run function highliner:replay/choose_target
execute if score !current_lobby_menu constants matches 3 if score !gamemode constants matches 0 if score !current_lobby_selection constants matches 1 run function highliner:replay/remove/main
execute if score !current_lobby_menu constants matches 3 if score !gamemode constants matches 3 if score !current_lobby_selection constants matches 3 run function highliner:replay/exit
execute if score !current_lobby_menu constants matches 3 if score !gamemode constants matches 3 if score !current_lobby_selection constants matches 2 run function highliner:settings/replay_jump_speed
execute if score !current_lobby_menu constants matches 3 if score !gamemode constants matches 3 if score !current_lobby_selection constants matches 1 run function highliner:game/start/from_replay
