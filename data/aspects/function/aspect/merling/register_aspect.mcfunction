# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:registry aspect.aspects:merling set value {id: 1, namespace: "aspects", name: "merling", color: "#2e89f1", sound: "minecraft:entity.tropical_fish.flop"}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect.aspects:merling

# Setup scoreboard objectives for the Aspect
