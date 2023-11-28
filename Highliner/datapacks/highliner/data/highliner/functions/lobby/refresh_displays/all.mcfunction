# Common
execute as @e[tag=lobby_display] run data modify entity @s view_range set value 0.25f
execute as @e[tag=lobby_display] run data modify entity @s teleport_duration set value 1
execute as @e[tag=lobby_display] run data modify entity @s interpolation_duration set value 1
execute as @e[tag=lobby_display] run data modify entity @s brightness set value {block: 15, sky: 15}
execute as @e[type=minecraft:text_display,tag=lobby_display,nbt={alignment: "center"}] run data modify entity @s line_width set value 99999

# For some reasons, left arrow and right arrow are flipped.
execute unless score !current_lobby_menu constants matches -1..3 run scoreboard players set !current_lobby_menu constants 0
execute as @e[type=minecraft:text_display,tag=lobby_display] run data modify entity @s text set value '{"text":"ERROR","color":"yellow"}'
execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_leftarrow] run data modify entity @s item.id set value "minecraft:iron_chestplate"
execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_rightarrow] run data modify entity @s item.id set value "minecraft:golden_chestplate"
execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_down] run data modify entity @s item.id set value "minecraft:golden_boots"
execute as @e[type=minecraft:item_display,tag=lobby_display,tag=lobby_display_change] run data modify entity @s item.id set value "minecraft:barrier"

# Lobby menu 0: Highliner Remastered
# - Join Red Team
# - Join Blue Team
# - Start Game
# - Start Tutorial
execute if score !current_lobby_menu constants matches 0 run function highliner:lobby/refresh_displays/menu_main

# Lobby menu -1: Credits
# - Map Maker: McDic
# - Resource Pack Authors: kayan4036 / McDic / RanolP
# - Good Testers: RanolP, ...
# - Highliner League Organizers: Protoss, ...
execute if score !current_lobby_menu constants matches -1 run function highliner:lobby/refresh_displays/menu_credits

# Lobby menu 1: Settings (1)
# - Game Speed: 180s / 10s
# - Max Turn: 120 turns
# - 2x2 Rule: Disallowed
# - First Player: Random
execute if score !current_lobby_menu constants matches 1 run function highliner:lobby/refresh_displays/menu_settings1

# Lobby menu 2: Settings (2)
# - Tile Theme: Wool
# - Instant Placing: Enabled
# - [WARNING] Reset Everything
execute if score !current_lobby_menu constants matches 2 run function highliner:lobby/refresh_displays/menu_settings2

# Lobby menu 3: Replay mode
# - Start(Exit) Replay Mode
# - Selected Match: 3rd last match
# - [Turn 10 / 120] Timer: 10 seconds, 27 seconds
# - Start game from the current state
execute if score !current_lobby_menu constants matches 3 run function highliner:lobby/refresh_displays/menu_replay

# Schedule
schedule clear highliner:lobby/refresh_displays/all
schedule function highliner:lobby/refresh_displays/all 1.2s
