execute unless score !forced_first_player constants matches 1..2 run data merge block 0 90 1 {front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.forced_first_player.l2","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobbytrigger set 9"}}', '{"translate":"highliner.lobby.sign.forced_first_player.random","color":"yellow","italic":true}', '{"text":""}']}}
execute if score !forced_first_player constants matches 1 run data merge block 0 90 1 {front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.forced_first_player.l2","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobbytrigger set 9"}}', '{"translate":"highliner.redteam","color":"dark_red","italic":true}', '{"text":""}']}}
execute if score !forced_first_player constants matches 2 run data merge block 0 90 1 {front_text: {messages: ['{"text":""}', '{"translate":"highliner.lobby.sign.forced_first_player.l2","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobbytrigger set 9"}}', '{"translate":"highliner.blueteam","color":"aqua","italic":true}', '{"text":""}']}}
