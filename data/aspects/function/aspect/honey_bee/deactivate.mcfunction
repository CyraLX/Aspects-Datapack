# Aspect specific PRE-DEACTIVATE logic
execute if predicate aspects:equipment/aspect_unique/chest run item replace entity @s armor.chest with air

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:aspect_list aspects:honey_bee

# Aspect specific POST-DEACTIVATE logic
