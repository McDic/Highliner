# Reset first
function highliner:game/placing/exit

# Summon placing_preview marker
summon minecraft:marker ~ 71.9 ~ {Invulnerable: 1b, CustomName: '{"text":"placing_preview"}'}
summon minecraft:marker ~ 71.9 ~ {Invulnerable: 1b, CustomName: '{"text":"placing_preview"}'}
summon minecraft:marker ~ 71.9 ~ {Invulnerable: 1b, CustomName: '{"text":"placing_preview"}'}
scoreboard players set @e[type=minecraft:marker,name="placing_preview"] placing 0
scoreboard players set @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] placing 1
scoreboard players set @e[type=minecraft:marker,name="placing_preview",scores={placing=0},limit=1] placing -1

# Summon slimes
execute as @e[type=minecraft:marker,name="placing_preview"] at @s run function highliner:game/placing/summon_preview
execute as @e[type=minecraft:slime,name="placing_preview"] at @s run function highliner:game/placing/summon_preview
execute as @e[type=minecraft:slime,name="placing_preview"] at @s run function highliner:game/placing/summon_preview
execute as @e[type=minecraft:slime,name="placing_preview"] at @s run function highliner:game/placing/summon_preview
execute as @e[type=minecraft:slime,name="placing_preview"] at @s run function highliner:game/placing/summon_preview
execute as @e[type=minecraft:slime,name="placing_preview",tag=!invisible] run function highliner:game/give_invisibility
team join placeable @e[type=minecraft:slime,name="placing_preview"]
scoreboard players set @e[type=minecraft:slime,name="placing_preview"] temp_variables 0

# Placing dx, dz
scoreboard players set !placing_dx constants 0
scoreboard players set !placing_dz constants 0
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 0
scoreboard players set !placing_dz constants 1
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 0
scoreboard players set !placing_dz constants 2
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 0
scoreboard players set !placing_dz constants 3
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 1
scoreboard players set !placing_dz constants 0
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 1
scoreboard players set !placing_dz constants 1
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 1
scoreboard players set !placing_dz constants 2
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 1
scoreboard players set !placing_dz constants 3
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 2
scoreboard players set !placing_dz constants 0
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 2
scoreboard players set !placing_dz constants 1
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 2
scoreboard players set !placing_dz constants 2
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 2
scoreboard players set !placing_dz constants 3
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 3
scoreboard players set !placing_dz constants 0
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 3
scoreboard players set !placing_dz constants 1
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 3
scoreboard players set !placing_dz constants 2
function highliner:game/placing/assign_dxdz_slimes
scoreboard players set !placing_dx constants 3
scoreboard players set !placing_dz constants 3
function highliner:game/placing/assign_dxdz_slimes
