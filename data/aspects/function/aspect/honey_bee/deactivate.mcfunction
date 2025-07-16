# Aspect specific PRE-DEACTIVATE logic
execute if predicate aspects:equipment/aspect_unique/chest run function aspectlib:equipment/remove/chestplate

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:aspect_list aspects:honey_bee

# Aspect specific POST-DEACTIVATE logic
