# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:registry aspect.aspects:elytrian set value {id: 6, namespace: "aspects", name: "elytrian", color: "#f2f10d", sound: "minecraft:entity.parrot.ambient"}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect.aspects:elytrian

# Setup scoreboard objectives for the Aspect
function aspects:aspect/elytrian/advancement/flying_marathon/scoreboard/initialize
function aspects:aspect/elytrian/fly_damage/initialize
function aspects:aspect/elytrian/rocket_damage/scoreboard/initialize
function aspects:aspect/elytrian/wings/scoreboard/initialize
