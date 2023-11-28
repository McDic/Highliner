tellraw @a {"translate":"highliner.gamestatus.settings.head","color":"yellow","bold":true}
tellraw @a {"translate":"highliner.gamestatus.settings.maxturn","color":"yellow","italic":true,"with":[{"score":{"objective":"constants","name":"!max_turn"}}]}
tellraw @a {"translate":"highliner.gamestatus.settings.gamespeed","color":"yellow","italic":true,"with":[{"score":{"objective":"constants","name":"!gamespeed_addtime"}},{"score":{"objective":"constants","name":"!gamespeed_maxtime"}}]}

execute unless score !disable_x22 constants matches 1 run tellraw @a {"translate":"highliner.gamestatus.settings.x22.enabled","color":"yellow","italic":true}
execute if score !disable_x22 constants matches 1 run tellraw @a {"translate":"highliner.gamestatus.settings.x22.disabled","color":"yellow","italic":true}

execute if score !forced_first_player constants matches 1 run tellraw @a {"translate":"highliner.gamestatus.settings.forced_first_player.nonrandom","color":"yellow","italic":true,"with":[{"translate":"highliner.redteam"}]}
execute if score !forced_first_player constants matches 2 run tellraw @a {"translate":"highliner.gamestatus.settings.forced_first_player.nonrandom","color":"yellow","italic":true,"with":[{"translate":"highliner.blueteam"}]}
execute unless score !forced_first_player constants matches 1..2 run tellraw @a {"translate":"highliner.gamestatus.settings.forced_first_player.random","color":"yellow","italic":true}

execute if score !tile_theme constants matches 0 run tellraw @a {"translate":"highliner.gamestatus.settings.theme","color":"yellow","italic":true,"with":[{"translate":"highliner.lobby.text.settings.theme.wool"}]}
execute if score !tile_theme constants matches 1 run tellraw @a {"translate":"highliner.gamestatus.settings.theme","color":"yellow","italic":true,"with":[{"translate":"highliner.lobby.text.settings.theme.concrete"}]}
execute if score !tile_theme constants matches 2 run tellraw @a {"translate":"highliner.gamestatus.settings.theme","color":"yellow","italic":true,"with":[{"translate":"highliner.lobby.text.settings.theme.concrete_powder"}]}
execute if score !tile_theme constants matches 3 run tellraw @a {"translate":"highliner.gamestatus.settings.theme","color":"yellow","italic":true,"with":[{"translate":"highliner.lobby.text.settings.theme.terracotta"}]}
execute if score !tile_theme constants matches 4 run tellraw @a {"translate":"highliner.gamestatus.settings.theme","color":"yellow","italic":true,"with":[{"translate":"highliner.lobby.text.settings.theme.ore"}]}
execute if score !tile_theme constants matches 5 run tellraw @a {"translate":"highliner.gamestatus.settings.theme","color":"yellow","italic":true,"with":[{"translate":"highliner.lobby.text.settings.theme.hyphae"}]}
