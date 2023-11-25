execute as @e[type=minecraft:marker,name="placing_preview"] run scoreboard players set @e[type=minecraft:slime,name="placing_preview",scores={temp_variables=0},limit=1] temp_variables 1
scoreboard players set @e[type=minecraft:slime,name="placing_preview",scores={temp_variables=1}] placing 0
scoreboard players set @e[type=minecraft:slime,name="placing_preview",limit=1,scores={placing=0,temp_variables=1}] placing 1
scoreboard players set @e[type=minecraft:slime,name="placing_preview",limit=1,scores={placing=0,temp_variables=1}] placing -1
scoreboard players operation @e[type=minecraft:slime,name="placing_preview",scores={temp_variables=1}] placing_dx = !placing_dx constants
scoreboard players operation @e[type=minecraft:slime,name="placing_preview",scores={temp_variables=1}] placing_dz = !placing_dz constants
scoreboard players set @e[type=minecraft:slime,name="placing_preview",scores={temp_variables=1}] temp_variables 2
