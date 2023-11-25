setblock -2 89 -2 minecraft:structure_block[mode=load]{mode: "LOAD", ignoreEntities: 1, posX: 0, posY: 0, posZ: 0, name: "highliner:spawn"} destroy
setblock -2 90 -2 minecraft:redstone_block destroy

setblock 0 91 -2 minecraft:oak_wall_sign[facing=north] destroy
setblock -1 91 -2 minecraft:oak_wall_sign[facing=north] destroy
setblock -1 91 1 minecraft:oak_wall_sign[facing=south] destroy
setblock 0 91 1 minecraft:oak_wall_sign[facing=south] destroy
setblock 0 90 1 minecraft:oak_wall_sign[facing=south] destroy

scoreboard players remove !max_turn constants 30
function highliner:settings/maxturn
scoreboard players remove !gamespeed constants 1
function highliner:settings/gamespeed
scoreboard players remove !disable_x22 constants 1
function highliner:settings/x22
scoreboard players remove !tile_theme constants 1
function highliner:settings/tile_theme

setblock 1 90 0 minecraft:oak_wall_sign[facing=east]{front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.reset.l2","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobbytrigger set 8"}}', '{"translate":"highliner.lobby.sign.reset.l3","color":"yellow","bold":true}', '{"text":""}']}} destroy


schedule clear highliner:lobby/refresh_signs/all
function highliner:lobby/refresh_signs/all
