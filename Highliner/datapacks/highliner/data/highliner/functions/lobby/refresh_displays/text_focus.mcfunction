execute unless score !current_lobby_selection constants matches 1.. run scoreboard players operation !current_lobby_selection constants = !highest_lobby_selection constants
execute unless score !current_lobby_selection constants <= !highest_lobby_selection constants run scoreboard players operation !current_lobby_selection constants = !highest_lobby_selection constants

tag @e[type=minecraft:text_display,tag=lobby_display,tag=lobby_display_focused] remove lobby_display_focused
execute if score !current_lobby_selection constants matches 1 run tag @e[type=minecraft:text_display,tag=lobby_display,tag=lobby_display_text1] add lobby_display_focused
execute if score !current_lobby_selection constants matches 2 run tag @e[type=minecraft:text_display,tag=lobby_display,tag=lobby_display_text2] add lobby_display_focused
execute if score !current_lobby_selection constants matches 3 run tag @e[type=minecraft:text_display,tag=lobby_display,tag=lobby_display_text3] add lobby_display_focused
execute if score !current_lobby_selection constants matches 4 run tag @e[type=minecraft:text_display,tag=lobby_display,tag=lobby_display_text4] add lobby_display_focused
