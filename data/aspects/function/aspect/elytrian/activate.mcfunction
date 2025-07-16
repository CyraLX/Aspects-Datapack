# Aspect specific PRE-ACTIVATE logic
execute unless predicate aspects:equipment/aspect_unique/chest run function aspectlib:equipment/drop/chestplate
function aspects:aspect/elytrian/advancement/flying_marathon/cancel_tracking
function aspects:aspect/elytrian/rocket_damage/scoreboard/reset

# Generic ACTIVATE logic
function aspects:aspect/generic/activate with storage aspects:aspect_list aspects:elytrian

# Aspect specific POST-ACTIVATE logic
