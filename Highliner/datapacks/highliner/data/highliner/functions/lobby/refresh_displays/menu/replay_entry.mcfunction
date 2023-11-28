scoreboard players set !highest_lobby_selection constants 2
function highliner:lobby/refresh_displays/text_focus

execute as @e[type=minecraft:text_display,tag=lobby_display_text5] run data modify entity @s text set value '{"text":""}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text4] run data modify entity @s text set value '{"text":""}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text3] run data modify entity @s text set value '{"translate":"highliner.lobby.text.replay.title","color":"yellow","bold":true}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text2] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.enter","color":"yellow"}'
execute as @e[type=minecraft:text_display,tag=lobby_display_text2] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.enter","color":"yellow","italic":true,"underlined":true}'

execute store result score !stored_saves constants run data get storage highliner:saved_matches matches
execute if score !stored_saves constants matches ..0 as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.not_available","color":"yellow"}'
execute if score !stored_saves constants matches ..0 as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.not_available","color":"yellow","italic":true,"underlined":true}'

execute unless score !stored_saves constants matches ..0 run function highliner:game/record/get_match_id
execute unless score !stored_saves constants matches ..0 as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=!lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.selected","color":"yellow","with":[{"score":{"name":"!target_replay_match_id_0","objective":"constants"}},{"score":{"name":"!target_replay_match_id_1","objective":"constants"}},{"score":{"name":"!target_replay_match_id_2","objective":"constants"}},{"score":{"name":"!target_replay_match_id_3","objective":"constants"}}]}'
execute unless score !stored_saves constants matches ..0 as @e[type=minecraft:text_display,tag=lobby_display_text1] run data modify entity @s[tag=lobby_display_focused] text set value '{"translate":"highliner.lobby.text.replay.selected","color":"yellow","with":[{"score":{"name":"!target_replay_match_id_0","objective":"constants"}},{"score":{"name":"!target_replay_match_id_1","objective":"constants"}},{"score":{"name":"!target_replay_match_id_2","objective":"constants"}},{"score":{"name":"!target_replay_match_id_3","objective":"constants"}}],"italic":true,"underlined":true}'

execute unless score !stored_saves constants matches ..0 if score !current_lobby_selection constants matches 2 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:ender_pearl"
execute unless score !stored_saves constants matches ..0 if score !current_lobby_selection constants matches 1 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:iron_boots"
execute if score !stored_saves constants matches ..0 as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:barrier"
