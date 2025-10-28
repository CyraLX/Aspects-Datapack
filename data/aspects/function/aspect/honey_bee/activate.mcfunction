# Aspect specific PRE-ACTIVATE logic
execute unless predicate aspects:equipment/aspect_unique/chest run function aspectlib:equipment/drop/chestplate

# Generic ACTIVATE logic
function aspects:aspect/generic/activate with storage aspects:registry aspect."aspects:honey_bee"

# Aspect specific POST-ACTIVATE logic
## Set Aspect Group
function aspects:aspect_group/set/sensitive_to_bane_of_arthropods
## Set stored potion effect to none
function aspects:item/focus/honey_bee/set_none with storage aspectlib:dummy






