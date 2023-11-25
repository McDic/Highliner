execute as @a[scores={welcome=0}] at @s run function highliner:welcome/idle

# Lobby trigger
tellraw @a[scores={lobbytrigger=99}] {"translate":"highliner.lobby.author_blog","underlined":true,"italic":true,"color":"yellow","clickEvent":{"action":"open_url","value":"https://blog.mcdic.net/"}}
scoreboard players set @a[scores={lobbytrigger=99}] lobbytrigger 0
execute if score !lobby_locked constants matches 1 run tellraw @a[scores={lobbytrigger=1..}] {"translate":"highliner.lobby.message.locked","color":"yellow","italic":true}
execute if score !lobby_locked constants matches 1 run scoreboard players set @a lobbytrigger 0
scoreboard players set !concurrent_triggers constants 0
execute as @a[scores={lobbytrigger=1..}] run scoreboard players add !concurrent_triggers constants 1
execute if score !concurrent_triggers constants matches 2.. run tellraw @a[scores={lobbytrigger=1..}] {"translate":"highliner.lobby.message.duplicated","color":"yellow","italic":true}
execute if score !concurrent_triggers constants matches 2.. run scoreboard players set @a lobbytrigger 0

# Actual triggering
execute as @a[scores={lobbytrigger=1}] at @s run function highliner:game/start_entry
execute as @a[team=!redteam,scores={lobbytrigger=2}] at @s run function highliner:lobby/join_red
execute as @a[team=redteam,scores={lobbytrigger=2}] at @s run function highliner:lobby/leave_red
execute if entity @a[scores={lobbytrigger=3}] run function highliner:tutorial/enter
execute as @a[team=!blueteam,scores={lobbytrigger=4}] at @s run function highliner:lobby/join_blue
execute as @a[team=blueteam,scores={lobbytrigger=4}] at @s run function highliner:lobby/leave_blue
execute if entity @a[scores={lobbytrigger=5}] run function highliner:settings/maxturn
execute if entity @a[scores={lobbytrigger=6}] run function highliner:settings/gamespeed
execute if entity @a[scores={lobbytrigger=7}] run function highliner:settings/x22
execute if entity @a[scores={lobbytrigger=8}] run reload
execute if entity @a[scores={lobbytrigger=9}] run function highliner:settings/forced_first_player
execute if entity @a[scores={lobbytrigger=10}] run function highliner:settings/tile_theme
# lobbytrigger=99 is reserved for blog link

# Reset and enable all lobby triggers
scoreboard players enable @a lobbytrigger
scoreboard players set @a lobbytrigger 0

# Easter egg
execute as @a[gamemode=adventure,x=-1,y=92,z=-1,dx=1,dy=0,dz=1,x_rotation=-90..-30] run function highliner:lobby/levitation
