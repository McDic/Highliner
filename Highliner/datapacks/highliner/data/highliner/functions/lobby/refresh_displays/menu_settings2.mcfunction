scoreboard players set !highest_lobby_selection constants 3
function highliner:lobby/refresh_displays/text_focus

execute as @e[type=minecraft:text_display,tag=lobby_display_text5] run data modify entity @s text set value '{"text":""}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text4] run data modify entity @s text set value '{"translate":"highliner.lobby.text.settings.title","color":"yellow","bold":true}'

execute as @e[type=minecraft:text_display,tag=lobby_display_text3] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.settings.maxturn","color":"yellow","with":[{"score":{"name":"!max_turn","objective":"constants"}}]}'
