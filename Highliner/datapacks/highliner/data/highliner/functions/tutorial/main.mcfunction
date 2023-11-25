# Force gamemode to spectator
gamemode spectator @a[gamemode=adventure]
gamemode spectator @a[gamemode=survival]

# Run by chapter
execute if score !current_tutorial_chapter constants matches 0 run function highliner:tutorial/ch0/main
execute if score !current_tutorial_chapter constants matches 1 run function highliner:tutorial/ch1/main
execute if score !current_tutorial_chapter constants matches 2 run function highliner:tutorial/ch2/main
execute if score !current_tutorial_chapter constants matches 3 run function highliner:tutorial/ch3/main
execute if score !current_tutorial_chapter constants matches 4 run function highliner:tutorial/ch4/main
execute if score !current_tutorial_chapter constants matches 5 run function highliner:tutorial/ch5/main

# Schedule next
execute if entity @p if score !tutorial_timer constants < !tutorial_timer_max constants run scoreboard players add !tutorial_timer constants 1
execute if entity @p if score !tutorial_timer constants < !tutorial_timer_max constants run schedule function highliner:tutorial/main 1t replace
execute if entity @p if score !tutorial_timer constants >= !tutorial_timer_max constants run function highliner:tutorial/next_chapter
execute unless entity @p run function highliner:tutorial/exit
