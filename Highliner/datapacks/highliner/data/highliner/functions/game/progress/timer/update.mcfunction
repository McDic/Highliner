function highliner:game/progress/load_all_scores
scoreboard players operation !timer_temp constants += !gamespeed_addtime constants
scoreboard players operation !timer_temp constants < !gamespeed_maxtime constants
function highliner:game/progress/timer/save
