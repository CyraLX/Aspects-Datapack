# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:registry aspect."aspects:rascal" set value {id: 8, namespace: "aspects", name: "rascal", color: "#3A3B3C", sound: "minecraft:block.deepslate.break"}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect."aspects:rascal"

# Setup scoreboard objectives for the Aspect
