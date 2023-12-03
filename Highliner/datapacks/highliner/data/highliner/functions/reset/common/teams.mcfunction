# Teams
team remove spectators
team remove redteam
team remove blueteam
team remove placing_preview
team add spectators ["",{"text":"Spectator","color":"yellow"}]
team add redteam ["",{"text":"Red Team","color":"dark_red"}]
team add blueteam ["",{"text":"Blue Team","color":"aqua"}]
team add placing_preview
team modify spectators collisionRule never
team modify spectators color yellow
team modify spectators seeFriendlyInvisibles true
team modify redteam collisionRule never
team modify redteam color dark_red
team modify blueteam collisionRule never
team modify blueteam color aqua
team modify placing_preview collisionRule never
team modify placing_preview color yellow
