# THIS SHOULD CALLED IN HARD RESET ONLY

# Restore objectives
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
scoreboard objectives setdisplay below_name
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
scoreboard objectives remove wincount
scoreboard objectives add wincount dummy {"translate":"highliner.objectives.wincount", "color":"yellow", "bold":true}
scoreboard objectives remove cumulative_placed
scoreboard objectives add cumulative_placed dummy
scoreboard objectives remove cumulative_bridged
scoreboard objectives add cumulative_bridged dummy
scoreboard objectives remove thinking_time
scoreboard objectives add thinking_time dummy

scoreboard players reset @s
