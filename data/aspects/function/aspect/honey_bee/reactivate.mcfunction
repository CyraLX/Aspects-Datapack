# Aspect specific PRE-REACTIVATE logic
execute unless predicate aspects:equipment/aspect_unique/chest run function aspectlib:equipment/drop/chestplate

# Generic REACTIVATE logic
function aspectlib:player/id/expose
data modify storage aspectlib:dummy aspect set from storage aspects:aspect_list aspects:honey_bee
data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect.namespace
data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect.name
data modify storage aspectlib:dummy aspect_id set from storage aspectlib:dummy aspect.id
function aspects:aspect/generic/reactivate with storage aspectlib:dummy

# Aspect specific POST-REACTIVATE logic
## Set Aspect Group
function aspects:aspect_group/set/sensitive_to_bane_of_arthropods
