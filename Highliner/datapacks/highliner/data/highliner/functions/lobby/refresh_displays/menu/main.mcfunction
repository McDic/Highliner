scoreboard players set !highest_lobby_selection constants 4
function highliner:lobby/refresh_displays/text_focus

execute as @e[type=minecraft:text_display,tag=lobby_display_text5] run data modify entity @s text set value '{"translate":"highliner.lobby.text.main.title","color":"yellow","bold":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text4] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.main.start_game","color":"yellow"}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text4] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.main.start_game","color":"yellow","underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.main.start_tutorial","color":"yellow"}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.main.start_tutorial","color":"yellow","underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text2] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.main.joinleave","color":"dark_red","with":[{"translate":"highliner.redteam"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text2] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.main.joinleave","color":"dark_red","with":[{"translate":"highliner.redteam"}],"underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.main.joinleave","color":"aqua","with":[{"translate":"highliner.blueteam"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.main.joinleave","color":"aqua","with":[{"translate":"highliner.blueteam"}],"underlined":true,"italic":true}'

execute if score !current_lobby_selection constants matches 4 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:ender_pearl"
execute if score !current_lobby_selection constants matches 3 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:enchanted_book"
execute if score !current_lobby_selection constants matches 1..2 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:leather_chestplate"
execute if score !current_lobby_selection constants matches 2 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.tag set value {"display": {"color": 11141120}}
execute if score !current_lobby_selection constants matches 1 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.tag set value {"display": {"color": 5636095}}
