# Checking bridge by looking at "FRONT" display, not background translated information.
execute unless blocks ~1 73 ~0 ~2 73 ~0 ~1 73 ~1 all run return 1
execute unless blocks ~1 73 ~3 ~2 73 ~3 ~1 73 ~1 all run return 1
execute unless blocks ~0 73 ~1 ~0 73 ~2 ~1 73 ~1 all run return 1
execute unless blocks ~3 73 ~1 ~3 73 ~2 ~1 73 ~1 all run return 1
return 0
