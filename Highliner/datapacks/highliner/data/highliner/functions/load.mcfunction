say Reloading Highliner - Made by McDic..

# Reset game
function highliner:game/finalize/reset

# Delete all entities
function highliner:game/placing/kill_preview
tp @e[type=!minecraft:player] ~ -128 ~
kill @e[type=!minecraft:player]

# Gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 1048576
gamerule disableElytraMovementCheck true
gamerule disableRaids true
gamerule doDaylightCycle true
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
weather clear
gamerule drowningDamage false
gamerule fallDamage false
gamerule freezeDamage false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule maxCommandChainLength 1048576
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule playersSleepingPercentage 101
gamerule randomTickSpeed 0
execute unless entity McDic run gamerule sendCommandFeedback false
execute if entity McDic run gamerule sendCommandFeedback true
gamerule showDeathMessages false
gamerule spawnRadius 5
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

# World spawn and border
setworldspawn 0 92 0
worldborder damage amount 9999

# Forceload
function highliner:reset_forceload

# Restore objectives
scoreboard objectives remove constants
scoreboard objectives add constants dummy
scoreboard objectives remove gps_x
scoreboard objectives add gps_x dummy
scoreboard objectives remove gps_y
scoreboard objectives add gps_y dummy
scoreboard objectives remove gps_z
scoreboard objectives add gps_z dummy
scoreboard objectives remove placing
scoreboard objectives add placing dummy
scoreboard objectives remove placing_dx
scoreboard objectives add placing_dx dummy
scoreboard objectives remove placing_dz
scoreboard objectives add placing_dz dummy
scoreboard objectives remove temp_variables
scoreboard objectives add temp_variables dummy
scoreboard objectives remove welcome
scoreboard objectives add welcome minecraft.custom:leave_game
scoreboard objectives remove current_tile
scoreboard objectives add current_tile dummy
scoreboard objectives remove edgeside
scoreboard objectives add edgeside dummy
scoreboard objectives remove try_surrendered
scoreboard objectives add try_surrendered minecraft.used:minecraft.diamond_boots
scoreboard objectives remove surrendered
scoreboard objectives add surrendered trigger
scoreboard objectives remove rotated
scoreboard objectives add rotated minecraft.used:minecraft.iron_boots
scoreboard objectives remove tried_placing
scoreboard objectives add tried_placing minecraft.used:minecraft.golden_boots
scoreboard objectives remove itemdrop
scoreboard objectives add itemdrop minecraft.custom:minecraft.drop
scoreboard objectives remove changed_floor
scoreboard objectives add changed_floor minecraft.used:minecraft.netherite_boots
scoreboard objectives remove lobbytrigger_v2
scoreboard objectives add lobbytrigger_v2 dummy
scoreboard objectives remove interaction_offset
scoreboard objectives add interaction_offset dummy
scoreboard objectives remove used_item_backward
scoreboard objectives add used_item_backward minecraft.used:minecraft.iron_chestplate
scoreboard objectives remove used_item_forward
scoreboard objectives add used_item_forward minecraft.used:minecraft.golden_chestplate

# Constants and variables
scoreboard players set !0 constants 0
scoreboard players set !1 constants 1
scoreboard players set !-1 constants -1
scoreboard players set !2 constants 2
scoreboard players set !3 constants 3
scoreboard players set !4 constants 4
scoreboard players set !9 constants 9
scoreboard players set !max_turn_cap constants 240
scoreboard players set !halftiles constants 421
scoreboard players set !gamemode constants 0
scoreboard players set !placing_direction constants 1
scoreboard players set !max_tutorial_chapters constants 6
scoreboard players set !current_tutorial_chapter constants 0
scoreboard players set !tutorial_timer_max constants -1
scoreboard players set !tutorial_timer constants 0
scoreboard players set !tutorial_placeable_red constants 1
scoreboard players set !max_turn constants 90
scoreboard players set !turn constants 1
scoreboard players set !gamespeed constants 0
scoreboard players set !disable_x22 constants 0
scoreboard players set !display_tester constants 0
scoreboard players set !timer constants -1
scoreboard players set !forced_first_player constants -1
scoreboard players set !tile_theme constants -1
scoreboard players set !current_lobby_menu constants 0
scoreboard players set !current_lobby_selection constants 4
scoreboard players set !instant_placing constants -1
scoreboard players set !max_match_saves constants 20
scoreboard players set !selected_replay_index constants -1
scoreboard players set !replay_jump_speed constants 0
scoreboard players set !timeout_penalty constants 0

# Teams
team remove spectators
team remove redteam
team remove blueteam
team remove placing_preview
team add spectators ["",{"text":"Spectator","color":"yellow"}]
team add redteam ["",{"text":"Red Team","color":"dark_red"}]
team add blueteam ["",{"text":"Blue Team","color":"aqua"}]
team add placing_preview
team modify spectators collisionRule never
team modify spectators color yellow
team modify spectators seeFriendlyInvisibles true
team modify redteam collisionRule never
team modify redteam color dark_red
team modify blueteam collisionRule never
team modify blueteam color aqua
team modify placing_preview collisionRule never
team modify placing_preview color yellow

# Advancements
advancement revoke @a everything

# Remove schedules
schedule clear highliner:tutorial/main
schedule clear highliner:game/board/refresh

# Settings
function highliner:settings/maxturn
function highliner:settings/gamespeed
function highliner:settings/x22
function highliner:settings/forced_first_player
function highliner:settings/tile_theme
function highliner:settings/instant_placing
function highliner:settings/replay_jump_speed
function highliner:settings/timeout_penalty

# Board
function highliner:game/board/reset/all

# Bossbar
function highliner:game/bossbar/clear

# Destroy all records (disabled)
# function highliner:game/record/destroy

# Create lobby again
function highliner:lobby/create/idle
