scoreboard players add !display_tester constants 1
execute if score !display_tester constants matches ..-1 run scoreboard players set !display_tester constants 0

data remove block -1 90 -2 SkullOwner.Properties
execute if score !display_tester constants matches 0 run data modify block -1 90 -2 SkullOwner.Name set value Ranol_
execute if score !display_tester constants matches 0 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"Ranol_","color":"yellow","italic":true}'
execute if score !display_tester constants matches 1 run data modify block -1 90 -2 SkullOwner.Name set value Vilder50
execute if score !display_tester constants matches 1 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"Vilder50","color":"yellow","italic":true}'
execute if score !display_tester constants matches 2 run data modify block -1 90 -2 SkullOwner.Name set value Strongis13
execute if score !display_tester constants matches 2 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"Strongis13","color":"yellow","italic":true}'
execute if score !display_tester constants matches 3 run data modify block -1 90 -2 SkullOwner.Name set value cheatingconjurer
execute if score !display_tester constants matches 3 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"cheatingconjurer","color":"yellow","italic":true}'
execute if score !display_tester constants matches 4 run data modify block -1 90 -2 SkullOwner.Name set value finalchild
execute if score !display_tester constants matches 4 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"finalchild","color":"yellow","italic":true}'
execute if score !display_tester constants matches 5 run data modify block -1 90 -2 SkullOwner.Name set value igat
execute if score !display_tester constants matches 5 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"igat","color":"yellow","italic":true}'
execute if score !display_tester constants matches 6 run data modify block -1 90 -2 SkullOwner.Name set value GlitchedSeal
execute if score !display_tester constants matches 6 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"GlitchedSeal","color":"yellow","italic":true}'
execute if score !display_tester constants matches 7 run data modify block -1 90 -2 SkullOwner.Name set value SmartyAlek
execute if score !display_tester constants matches 7 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"SmartyAlek","color":"yellow","italic":true}'
execute if score !display_tester constants matches 8 run data modify block -1 90 -2 SkullOwner.Name set value aspookabie
execute if score !display_tester constants matches 8 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"aspookabie","color":"yellow","italic":true}'
execute if score !display_tester constants matches 9 run data modify block -1 90 -2 SkullOwner.Name set value Urgle
execute if score !display_tester constants matches 9 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"Urgle","color":"yellow","italic":true}'
execute if score !display_tester constants matches 10 run data modify block -1 90 -2 SkullOwner.Name set value Ba1ancer
execute if score !display_tester constants matches 10 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"Ba1ancer","color":"yellow","italic":true}'
execute if score !display_tester constants matches 11 run data modify block -1 90 -2 SkullOwner.Name set value Palraina
execute if score !display_tester constants matches 11 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"Palraina","color":"yellow","italic":true}'
execute if score !display_tester constants matches 12 run data modify block -1 90 -2 SkullOwner.Name set value MrBurdy
execute if score !display_tester constants matches 12 run data modify block 0 90 -2 front_text.messages[2] set value '{"text":"MrBurdy","color":"yellow","italic":true}'
execute if score !display_tester constants matches 12.. run scoreboard players set !display_tester constants -1
