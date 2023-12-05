say Soft-resetting Highliner - Made by McDic..

# This function changes the world to idle state.

# Common prefices
function highliner:reset/common/prefix
function highliner:reset/common/gamerule
function highliner:reset/common/worldborder
function highliner:reset/common/forceload
function highliner:reset/common/sysdata

# Welcome should be resetted anyway
scoreboard objectives remove welcome
scoreboard objectives add welcome minecraft.custom:leave_game

# Common suffices
function highliner:reset/common/constants
function highliner:reset/common/remove_schedules
function highliner:game/board/reset/all
function highliner:game/bossbar/clear

# Lobby
function highliner:lobby/create/idle
