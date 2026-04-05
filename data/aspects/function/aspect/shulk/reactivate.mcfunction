# Aspect specific PRE-ACTIVATE logic

# Generic ACTIVATE logic
function aspectlib:expose/player/id
data modify storage aspectlib:dummy aspect set from storage aspects:registry aspect[{namespace: "aspects", name: "shulk"}]
data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect.namespace
data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect.name
data modify storage aspectlib:dummy aspect_id set from storage aspectlib:dummy aspect.id
function aspects:aspect/generic/reactivate with storage aspectlib:dummy

# Aspect specific POST-ACTIVATE logic
function aspects:item/focus/shulk/storage/sync_has_storage with storage aspectlib:dummy
