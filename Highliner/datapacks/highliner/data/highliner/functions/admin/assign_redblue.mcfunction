# Parameters: $(red), $(blue)
execute if score !gamemode constants matches 1..2 run tellraw @s {"text":"You can't change red/blue teams now.", "color":"yellow", "italic":true}
execute if score !gamemode constants matches 1..2 run return 0
$execute as @p[name="$(red)"] run function highliner:lobby/join_red
$execute as @p[name="$(blue)"] run function highliner:lobby/join_blue
