worldborder warning distance 9999999
function highliner:game/progress/timer/load_all_scores
# scoreboard players remove !timer_temp constants 1
title @s title {"translate": "highliner.warn.timer.title", "color":"yellow", "bold":true, "with":[{"score":{"name":"!timer_temp","objective":"constants"},"color":"yellow","bold":true}]}
title @s subtitle {"text":""}
