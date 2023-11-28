scoreboard players set !highest_lobby_selection constants 3
function highliner:lobby/refresh_displays/text_focus

execute as @e[type=minecraft:text_display,tag=lobby_display_text5] run data modify entity @s text set value '{"text":""}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text4] run data modify entity @s text set value '{"translate":"highliner.lobby.text.replay.title_in","color":"yellow","bold":true,"with":[{"score":{"objective":"constants","name":"!target_replay_match_id_0"}},{"score":{"objective":"constants","name":"!target_replay_match_id_1"}},{"score":{"objective":"constants","name":"!target_replay_match_id_2"}},{"score":{"objective":"constants","name":"!target_replay_match_id_3"}}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.exit","color":"yellow"}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.exit","color":"yellow","italic":true,"underlined":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text2] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.jump_speed","with":[{"score":{"name":"!replay_jump_speed","objective":"constants"}}]}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text2] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.jump_speed","with":[{"score":{"name":"!replay_jump_speed","objective":"constants"}}],"italic":true,"underlined":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.start_from_here","color":"yellow"}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.start_from_here","color":"yellow","italic":true,"underlined":true}'
