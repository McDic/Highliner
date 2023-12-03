# Constants and variables
scoreboard players set !0 constants 0
scoreboard players set !1 constants 1
scoreboard players set !-1 constants -1
scoreboard players set !2 constants 2
scoreboard players set !3 constants 3
scoreboard players set !4 constants 4
scoreboard players set !9 constants 9
scoreboard players set !max_turn_cap constants 240

scoreboard players set !halftiles constants 29
scoreboard players operation !halftiles constants *= !halftiles constants
scoreboard players add !halftiles constants 1
scoreboard players operation !halftiles constants /= !2 constants

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

function highliner:reset/common/settings
