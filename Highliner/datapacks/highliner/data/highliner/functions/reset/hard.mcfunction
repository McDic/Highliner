say Hard-resetting Highliner - Made by McDic..

# This function changes the world to idle state
# AND RESET EVERY PERMANENT STATES,
# INCLUDING ADVANCEMENTS AND REPLAYS.

# Common prefices
function highliner:reset/common/prefix
function highliner:reset/common/gamerule
function highliner:reset/common/worldborder
function highliner:reset/common/forceload
function highliner:reset/common/sysdata

# Advancements and objectives
advancement revoke @a everything
function highliner:reset/common/objectives

# Common suffices
function highliner:reset/common/constants
function highliner:reset/common/remove_schedules
function highliner:game/board/reset/all
function highliner:game/bossbar/clear

# Destroy all records
function highliner:game/record/destroy

# Lobby
function highliner:lobby/create/idle
