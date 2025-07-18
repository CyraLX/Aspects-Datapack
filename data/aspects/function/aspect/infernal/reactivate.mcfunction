# Aspect specific PRE-REACTIVATE logic

# Generic REACTIVATE logic
function aspectlib:player/id/expose
data modify storage aspectlib:dummy aspect set from storage aspects:aspect_list aspects:infernal
data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect.namespace
data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect.name
data modify storage aspectlib:dummy aspect_id set from storage aspectlib:dummy aspect.id
function aspects:aspect/generic/reactivate with storage aspectlib:dummy

# Aspect specific POST-REACTIVATE logic
## Set Aspect Groups
function aspects:aspect_group/set/hydrophobic
function aspects:aspect_group/set/fire_based
function aspects:aspect_group/set/fireproof
