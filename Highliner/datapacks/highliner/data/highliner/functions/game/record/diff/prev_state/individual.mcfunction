execute store result score !prev_tile_state constants run function highliner:game/board/check/current_tile
clone ~ 68 ~ ~3 68 ~3 ~ 71 ~
execute store result score !current_tile_state constants run function highliner:game/board/check/current_tile
execute if score !prev_tile_state constants = !current_tile_state constants run return 0

data modify storage highliner:temp_storage temp_prev_state set value {x: 0, z: 0, state: 0}
execute store result storage highliner:temp_storage temp_prev_state.state int 1 run scoreboard players get !prev_tile_state constants
execute positioned ~ 68 ~ summon minecraft:marker run function highliner:game/record/diff/temp_xz_assign
data modify storage highliner:current_diff prev_states append from storage highliner:temp_storage temp_prev_state
