# Aspect specific PRE-REACTIVATE logic
execute unless predicate aspects:equipment/aspect_unique/chest run function aspectlib:equipment/drop/chestplate
function aspects:aspect/elytrian/advancement/flying_marathon/cancel_tracking
function aspects:aspect/elytrian/rocket_damage/scoreboard/reset

# Generic REACTIVATE logic
function aspectlib:expose/player/id
data modify storage aspectlib:cache temp.aspect set from storage aspects:registry aspect[{namespace: "aspects", name: "elytrian"}]
data modify storage aspectlib:cache temp.aspect_namespace set from storage aspectlib:cache temp.aspect.namespace
data modify storage aspectlib:cache temp.aspect_name set from storage aspectlib:cache temp.aspect.name
data modify storage aspectlib:cache temp.aspect_id set from storage aspectlib:cache temp.aspect.id
function aspects:aspect/generic/reactivate with storage aspectlib:cache temp

# Aspect specific POST-REACTIVATE logic
## Set Aspect Group
function aspects:aspect_group/winged/activate
