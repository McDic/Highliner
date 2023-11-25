function highliner:game/board/reset/all
function highliner:game/placing/init
schedule clear highliner:game/board/refresh
execute as @e[type=minecraft:slime,name="placing_preview"] run data modify entity @s Glowing set value false

scoreboard players add !current_tutorial_chapter constants 1
scoreboard players set !tutorial_timer constants 0

execute if score !current_tutorial_chapter constants matches 0 run scoreboard players set !tutorial_timer_max constants 180
execute if score !current_tutorial_chapter constants matches 1 run scoreboard players set !tutorial_timer_max constants 280
execute if score !current_tutorial_chapter constants matches 2 run scoreboard players set !tutorial_timer_max constants 360
execute if score !current_tutorial_chapter constants matches 3 run scoreboard players set !tutorial_timer_max constants 520
execute if score !current_tutorial_chapter constants matches 4 run scoreboard players set !tutorial_timer_max constants 440
execute if score !current_tutorial_chapter constants matches 5 run scoreboard players set !tutorial_timer_max constants 300

execute if score !current_tutorial_chapter constants < !max_tutorial_chapters constants run function highliner:tutorial/main
execute if score !current_tutorial_chapter constants >= !max_tutorial_chapters constants run function highliner:tutorial/exit
