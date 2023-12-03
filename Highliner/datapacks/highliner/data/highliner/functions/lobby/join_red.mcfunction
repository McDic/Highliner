execute as @a[team=redteam] run function highliner:lobby/leave_red
team empty redteam
team join redteam @s
tellraw @a {"translate":"highliner.lobby.message.join","color":"dark_red","bold":true,"with":[{"selector":"@s","bold":true},{"translate":"highliner.redteam"}]}
execute as @a run function highliner:game/items/reset
