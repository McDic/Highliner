# Common
execute as @e[tag=lobby_display] run function highliner:lobby/refresh_displays/set_display_data
execute as @e[type=minecraft:text_display,tag=lobby_display] run data modify entity @s line_width set value 99999

# For some reasons, left arrow and right arrow are flipped.
execute unless score !current_lobby_menu constants matches -1..3 run scoreboard players set !current_lobby_menu constants 0
execute as @e[type=minecraft:text_display,tag=lobby_display] run data modify entity @s text set value '{"text":"ERROR","color":"yellow"}'
execute as @e[tag=lobby_display] run data modify entity @s billboard set value "fixed"
execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_leftarrow] run data modify entity @s item.id set value "minecraft:iron_chestplate"
execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_rightarrow] run data modify entity @s item.id set value "minecraft:golden_chestplate"
execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_down] run data modify entity @s item.id set value "minecraft:golden_boots"
execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:barrier"
execute as @e[type=minecraft:item_display,tag=lobby_display] run data remove entity @s item.tag

# Lobby menu 0: Highliner Remastered
# - Join Red Team
# - Join Blue Team
# - Start Game
# - Start Tutorial
execute if score !current_lobby_menu constants matches 0 run function highliner:lobby/refresh_displays/menu/main

# Lobby menu -1: Credits
# - Map Maker: McDic
# - Resource Pack Authors: kayan4036 / McDic / RanolP
# - Good Testers: RanolP, ...
# - Highliner League Organizers: Protoss, ...
execute if score !current_lobby_menu constants matches -1 run function highliner:lobby/refresh_displays/menu/credits

# Lobby menu 1: Settings (1)
# - Game Speed: 180s / 10s
# - Max Turn: 120 turns
# - 2x2 Rule: Disallowed
# - First Player: Random
execute if score !current_lobby_menu constants matches 1 run function highliner:lobby/refresh_displays/menu/settings1

# Lobby menu 2: Settings (2)
# - Tile Theme: Wool
# - Instant Placing: Enabled
# - [WARNING] Reset Everything
execute if score !current_lobby_menu constants matches 2 run function highliner:lobby/refresh_displays/menu/settings2

# Lobby menu 3 / Gamemode 0: Replay entry
# - Start Replay Mode
# - Selected Match ID: 123-456-789-000
execute if score !current_lobby_menu constants matches 3 if score !gamemode constants matches 0 run function highliner:lobby/refresh_displays/menu/replay_entry

# Lobby menu 3 / Gamemode 3: Replay inner
# - Exit Replay Mode
# - Selected Jump Speed: 1 turn
# - Start Game from Here
execute if score !current_lobby_menu constants matches 3 if score !gamemode constants matches 3 run function highliner:lobby/refresh_displays/menu/replay_in

# Schedule
schedule clear highliner:lobby/refresh_displays/all
schedule function highliner:lobby/refresh_displays/all 1.2s
