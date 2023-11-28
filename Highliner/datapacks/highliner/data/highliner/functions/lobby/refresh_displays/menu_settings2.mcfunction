scoreboard players set !highest_lobby_selection constants 3
function highliner:lobby/refresh_displays/text_focus

execute as @e[type=minecraft:text_display,tag=lobby_display_text5] run data modify entity @s text set value '{"text":""}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text4] run data modify entity @s text set value '{"translate":"highliner.lobby.text.settings.title","color":"yellow","bold":true}'

execute as @e[type=minecraft:text_display,tag=lobby_display_text3] unless score !tile_theme constants matches 1..6 run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.wool"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 1 run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.concrete"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 2 run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.concrete_powder"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 3 run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.terracotta"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 4 run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.ore"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 5 run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.hyphae"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 6 run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.mineral"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] unless score !tile_theme constants matches 1..6 run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.wool"}],"underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 1 run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.concrete"}],"underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 2 run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.concrete_powder"}],"underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 3 run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.terracotta"}],"underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 4 run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.ore"}],"underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 5 run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.hyphae"}],"underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] if score !tile_theme constants matches 6 run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.theme","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.theme.mineral"}],"underlined":true,"italic":true}'

execute as @e[type=minecraft:text_display,tag=lobby_display_text2] if score !instant_placing constants matches 1 run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.instant_placing","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.instant_placing.enabled"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text2] unless score !instant_placing constants matches 1 run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.instant_placing","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.instant_placing.disabled"}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text2] if score !instant_placing constants matches 1 run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.instant_placing","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.instant_placing.enabled"}],"underlined":true,"italic":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text2] unless score !instant_placing constants matches 1 run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.instant_placing","color":"yellow","with":[{"translate":"highliner.lobby.text.settings.instant_placing.disabled"}],"underlined":true,"italic":true}'

execute as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.reset","color":"yellow"}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.reset","color":"yellow","underlined":true,"italic":true}'

execute unless score !current_lobby_selection constants matches 1 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:iron_boots"
execute if score !current_lobby_selection constants matches 1 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:ender_pearl"
