# Aspect specific PRE-ACTIVATE logic
## Free up Chest slot by dropping anything there
execute unless predicate aspects:equipment/aspect_unique/chest run function aspectlib:equipment/drop/chestplate
## Reset trackers
function aspects:aspect/elytrian/advancement/flying_marathon/cancel_tracking
function aspects:aspect/elytrian/rocket_damage/scoreboard/reset

# Generic ACTIVATE logic
function aspects:aspect/generic/activate with storage aspects:registry aspect."aspects:elytrian"

# Aspect specific POST-ACTIVATE logic
