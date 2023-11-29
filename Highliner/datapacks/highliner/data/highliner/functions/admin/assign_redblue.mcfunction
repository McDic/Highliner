# Parameters: $(red), $(blue)
execute unless score !gamemode constants matches 0 run tellraw @s {"text":"You can only execute this on idle mode.", "color":"yellow", "italic":true}
execute unless score !gamemode constants matches 0 run return 0
$execute as @p[name="$(red)"] run function highliner:lobby/join_red
$execute as @p[name="$(blue)"] run function highliner:lobby/join_blue
