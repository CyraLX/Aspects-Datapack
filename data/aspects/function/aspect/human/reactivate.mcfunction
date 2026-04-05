# Aspect specific PRE-REACTIVATE logic

# Generic REACTIVATE logic
function aspectlib:expose/player/id
data modify storage aspectlib:dummy aspect set from storage aspects:registry aspect[{namespace: "aspects", name: "human"}]
data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect.namespace
data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect.name
data modify storage aspectlib:dummy aspect_id set from storage aspectlib:dummy aspect.id
function aspects:aspect/generic/reactivate with storage aspectlib:dummy

# Aspect specific POST-REACTIVATE logic
