scoreboard players set !highest_lobby_selection constants 4
function highliner:lobby/refresh_displays/text_focus

execute as @e[type=minecraft:text_display,tag=lobby_display_text5] run data modify entity @s text set value '{"translate":"highliner.lobby.text.credit.title","color":"yellow","bold":true}'
# execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_leftarrow] run data modify entity @s item.id set value "minecraft:barrier"

execute as @e[type=minecraft:text_display,tag=lobby_display_text4] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.map_maker", name: "McDic"}
execute if score !current_lobby_selection constants matches 4 run function highliner:lobby/refresh_displays/credit/player_head {name: "McDic"}

scoreboard players add !credit_rotation_resource constants 1
execute unless score !credit_rotation_resource constants matches 0..2 run scoreboard players set !credit_rotation_resource constants 0
execute if score !credit_rotation_resource constants matches 0 as @e[type=minecraft:text_display,tag=lobby_display_text3] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.resource", name: "McDic"}
execute if score !credit_rotation_resource constants matches 0 if score !current_lobby_selection constants matches 3 run function highliner:lobby/refresh_displays/credit/player_head {name: "McDic"}
execute if score !credit_rotation_resource constants matches 1 as @e[type=minecraft:text_display,tag=lobby_display_text3] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.resource", name: "kayan4036"}
execute if score !credit_rotation_resource constants matches 1 if score !current_lobby_selection constants matches 3 run function highliner:lobby/refresh_displays/credit/player_head {name: "kayan4036"}
execute if score !credit_rotation_resource constants matches 2 as @e[type=minecraft:text_display,tag=lobby_display_text3] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.resource", name: "Ranol_"}
execute if score !credit_rotation_resource constants matches 2 if score !current_lobby_selection constants matches 3 run function highliner:lobby/refresh_displays/credit/player_head {name: "Ranol_"}

scoreboard players add !credit_rotation_tester constants 1
execute unless score !credit_rotation_tester constants matches 0..13 run scoreboard players set !credit_rotation_tester constants 0
execute if score !credit_rotation_tester constants matches 0 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "Ranol_"}
execute if score !credit_rotation_tester constants matches 0 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "Ranol_"}
execute if score !credit_rotation_tester constants matches 1 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "Vilder50"}
execute if score !credit_rotation_tester constants matches 1 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "Vilder50"}
execute if score !credit_rotation_tester constants matches 2 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "Strongis13"}
execute if score !credit_rotation_tester constants matches 2 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "Strongis13"}
execute if score !credit_rotation_tester constants matches 3 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "cheatingconjurer"}
execute if score !credit_rotation_tester constants matches 3 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "cheatingconjurer"}
execute if score !credit_rotation_tester constants matches 4 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "finalchild"}
execute if score !credit_rotation_tester constants matches 4 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "finalchild"}
execute if score !credit_rotation_tester constants matches 5 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "igat"}
execute if score !credit_rotation_tester constants matches 5 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "igat"}
execute if score !credit_rotation_tester constants matches 6 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "GlitchedSeal"}
execute if score !credit_rotation_tester constants matches 6 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "GlitchedSeal"}
execute if score !credit_rotation_tester constants matches 7 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "SmartyAlek"}
execute if score !credit_rotation_tester constants matches 7 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "SmartyAlek"}
execute if score !credit_rotation_tester constants matches 8 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "aspookabie"}
execute if score !credit_rotation_tester constants matches 8 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "aspookabie"}
execute if score !credit_rotation_tester constants matches 9 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "Urgle"}
execute if score !credit_rotation_tester constants matches 9 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "Urgle"}
execute if score !credit_rotation_tester constants matches 10 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "Ba1ancer"}
execute if score !credit_rotation_tester constants matches 10 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "Ba1ancer"}
execute if score !credit_rotation_tester constants matches 11 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "Palraina"}
execute if score !credit_rotation_tester constants matches 11 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "Palraina"}
execute if score !credit_rotation_tester constants matches 12 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "MrBurdy"}
execute if score !credit_rotation_tester constants matches 12 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "MrBurdy"}
execute if score !credit_rotation_tester constants matches 13 as @e[type=minecraft:text_display,tag=lobby_display_text2] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.tester", name: "40planet"}
execute if score !credit_rotation_tester constants matches 13 if score !current_lobby_selection constants matches 2 run function highliner:lobby/refresh_displays/credit/player_head {name: "40planet"}

scoreboard players add !credit_rotation_league_organizer constants 1
execute unless score !credit_rotation_league_organizer constants matches 0..1 run scoreboard players set !credit_rotation_league_organizer constants 0
execute if score !credit_rotation_league_organizer constants matches 0 as @e[type=minecraft:text_display,tag=lobby_display_text1] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.league_organizer", name: "Protoss"}
execute if score !credit_rotation_league_organizer constants matches 0 if score !current_lobby_selection constants matches 1 run function highliner:lobby/refresh_displays/credit/player_head {name: "Protoss"}
execute if score !credit_rotation_league_organizer constants matches 1 as @e[type=minecraft:text_display,tag=lobby_display_text1] run function highliner:lobby/refresh_displays/credit/text {translation: "highliner.lobby.text.credit.league_organizer", name: "finalchild"}
execute if score !credit_rotation_league_organizer constants matches 1 if score !current_lobby_selection constants matches 1 run function highliner:lobby/refresh_displays/credit/player_head {name: "finalchild"}
