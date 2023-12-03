function highliner:lobby/create/common

# Structure blocks are now deprecated
# setblock -4 89 -2 minecraft:structure_block[mode=load]{mode: "LOAD", ignoreEntities: 1, posX: 0, posY: 0, posZ: 0, name: "highliner:lobby_v2"} destroy
# setblock -4 90 -2 minecraft:redstone_block destroy

# DO NOT FORGET FOLLOWINGS!
# 1. Add tags on root display: lobby_display and lobby_display_root; Tags:["lobby_display","lobby_display_root"]
# 2. Remove redundant tags; Due to limitations of BDstudio, they do not resolve duplicated NBTs
# 3. Main display; 0.0 90.5 0.0 
summon block_display 0.0 90.5 0.0 {Tags:["lobby_display","lobby_display_root"],Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:iron_boots",Count:1},item_display:"none",transformation:[-1.0000f,0.0000f,-0.0000f,-1.5000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_leftarrow"]},{id:"minecraft:item_display",item:{id:"minecraft:golden_boots",Count:1},item_display:"none",transformation:[-1.0000f,0.0000f,-0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_change"]},{id:"minecraft:item_display",item:{id:"minecraft:diamond_boots",Count:1},item_display:"none",transformation:[-1.0000f,0.0000f,-0.0000f,0.5000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_down"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 1 Front\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[1.5000f,0.0000f,0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,0.5000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text1"]},{id:"minecraft:item_display",item:{id:"minecraft:netherite_boots",Count:1},item_display:"none",transformation:[-1.0000f,0.0000f,-0.0000f,1.5000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_rightarrow"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 2 Front\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[1.5000f,0.0000f,0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,0.8750f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text2"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 3 Front\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[1.5000f,0.0000f,0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,1.2500f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text3"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 4 Front\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[1.5000f,0.0000f,0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,1.6250f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text4"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 5 Front\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[1.5000f,0.0000f,0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,2.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text5"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 1 Back\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[-1.5000f,0.0000f,-0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,0.5000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text1"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 2 Back\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[-1.5000f,0.0000f,-0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,0.8750f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text2"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 3 Back\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[-1.5000f,0.0000f,-0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,1.2500f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text3"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 4 Back\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[-1.5000f,0.0000f,-0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,1.6250f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text4"]},{id:"minecraft:text_display",text:"{\"text\":\"Text Level 5 Back\",\"color\":\"#ffff00\",\"bold\":\"false\",\"italic\":\"false\",\"underlined\":\"false\",\"strikethrough\":\"false\",\"font\":\"minecraft:uniform\"}",text_opacity:255,background:218103808,alignment:"center",line_width:210,default_background:false,transformation:[-1.5000f,0.0000f,-0.0000f,0.0000f,0.0000f,1.5000f,0.0000f,2.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["lobby_display","lobby_display_text5"]}]}

# Summon tiny interactions; 0 -> 4 -> 8 -> 16 -> 32 -> 64
execute positioned 0.0 90 0.0 run function highliner:lobby/create/tiny_interactions/create
execute as @e[type=minecraft:interaction,tag=lobby_interaction,limit=1] at @s run function highliner:lobby/create/tiny_interactions/create
execute as @e[type=minecraft:interaction,tag=lobby_interaction,limit=2] at @s run function highliner:lobby/create/tiny_interactions/create
execute as @e[type=minecraft:interaction,tag=lobby_interaction,limit=4] at @s run function highliner:lobby/create/tiny_interactions/create
execute as @e[type=minecraft:interaction,tag=lobby_interaction,limit=8] at @s run function highliner:lobby/create/tiny_interactions/create

scoreboard players set @e[type=minecraft:interaction,tag=lobby_interaction] interaction_offset -9999
scoreboard players set !nonce_offset constants -8
execute as @e[type=minecraft:interaction,tag=lobby_interaction_leftarrow] run function highliner:lobby/create/tiny_interactions/give_scores
scoreboard players set !nonce_offset constants -8
execute as @e[type=minecraft:interaction,tag=lobby_interaction_change] run function highliner:lobby/create/tiny_interactions/give_scores
scoreboard players set !nonce_offset constants -8
execute as @e[type=minecraft:interaction,tag=lobby_interaction_down] run function highliner:lobby/create/tiny_interactions/give_scores
scoreboard players set !nonce_offset constants -8
execute as @e[type=minecraft:interaction,tag=lobby_interaction_rightarrow] run function highliner:lobby/create/tiny_interactions/give_scores
function highliner:lobby/create/tiny_interactions/move/main

# Refresh settings
scoreboard players remove !max_turn constants 30
function highliner:settings/maxturn
scoreboard players remove !gamespeed constants 1
function highliner:settings/gamespeed
scoreboard players remove !disable_x22 constants 1
function highliner:settings/x22
scoreboard players remove !tile_theme constants 1
function highliner:settings/tile_theme

scoreboard players set !current_lobby_menu constants 0
scoreboard players set !current_lobby_selection constants 4
function highliner:lobby/refresh_displays/all

# Add sidebar
scoreboard objectives setdisplay sidebar wincount
