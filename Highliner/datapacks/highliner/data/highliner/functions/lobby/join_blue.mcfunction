execute as @a[team=blueteam] run function highliner:lobby/leave_blue
team empty blueteam
team join blueteam @s
tellraw @a {"translate":"highliner.lobby.message.join","color":"aqua","bold":true,"with":[{"selector":"@s","bold":true},{"translate":"highliner.blueteam"}]}
