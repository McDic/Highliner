data merge block 0 91 -2 {front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.start_game","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"trigger lobbytrigger set 1"}}', '{"text":""}', '{"text":""}']}}
data merge block -1 91 -2 {front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.start_tutorial","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"trigger lobbytrigger set 3"}}', '{"text":""}', '{"text":""}']}}
data merge block -1 91 1 {front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.joinleave","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"trigger lobbytrigger set 4"}}', '{"translate":"highliner.blueteam","color":"aqua","bold":true}', '{"text":""}']}}
data merge block 0 91 1 {front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.joinleave","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"trigger lobbytrigger set 2"}}', '{"translate":"highliner.redteam","color":"dark_red","bold":true}', '{"text":""}']}}

data merge block -2 91 -1 {front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.map_maker","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"trigger lobbytrigger set 99"}}', '{"text":"McDic","color":"yellow","italic":true,"underlined":true}', '{"text":""}']}}
data merge block -2 91 0 {front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.resource","color":"yellow","bold":true}', '{"text":"kayan4036","color":"yellow","italic":true}', '{"text":""}']}}
data remove block -2 90 -1 SkullOwner.Properties
data modify block -2 90 -1 SkullOwner.Name set value McDic
data remove block -2 90 0 SkullOwner.Properties
data modify block -2 90 0 SkullOwner.Name set value kayan4036

data modify block 0 90 -2 front_text.messages[1] set value '{"translate":"highliner.lobby.sign.tester","color":"yellow","bold":true}'

function highliner:lobby/rotate_testers

function highliner:lobby/refresh_signs/gamespeed
function highliner:lobby/refresh_signs/maxturn
function highliner:lobby/refresh_signs/reset
function highliner:lobby/refresh_signs/x22
function highliner:lobby/refresh_signs/forced_first_player

schedule clear highliner:lobby/refresh_signs/all
schedule function highliner:lobby/refresh_signs/all 1.5s
