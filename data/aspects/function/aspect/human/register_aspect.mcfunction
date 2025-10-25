# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:registry aspect.aspects:human set value {id: 0, namespace: "aspects", name: "human", color: "#8b7e77", sound: "minecraft:entity.player.hurt"}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect.aspects:human

# Setup scoreboard objectives for the Aspect
