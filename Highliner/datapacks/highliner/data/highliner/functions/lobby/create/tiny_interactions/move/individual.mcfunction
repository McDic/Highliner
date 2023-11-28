scoreboard players operation !temp_offset constants = @s interaction_offset
execute if score !temp_offset constants matches ..-1 run scoreboard players add !temp_offset constants 8
function highliner:lobby/create/tiny_interactions/move/recursive
