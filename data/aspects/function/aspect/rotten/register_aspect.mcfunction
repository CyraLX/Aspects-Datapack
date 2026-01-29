# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:registry aspect."aspects:rotten" set value {id: 9, namespace: "aspects", name: "rotten", color: "#3e692d", sound: "minecraft:entity.zombified_piglin.ambient"}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect."aspects:rotten"

# Setup scoreboard objectives for the Aspect
function aspects:aspect/rotten/aggravated/scoreboard/initialize
scoreboard objectives add aspects.aspect.rotten.summon_owner_id dummy
