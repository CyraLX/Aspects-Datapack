# Aspect specific PRE-DEACTIVATE logic
execute if predicate aspects:equipment/aspect_unique/chest run function aspectlib:equipment/remove/chestplate
function aspects:aspect/elytrian/fly_damage/remove
function aspects:aspect/elytrian/rocket_damage/scoreboard/disable

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:aspect_list aspects:elytrian

# Aspect specific POST-DEACTIVATE logic
