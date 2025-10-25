# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:registry aspect.aspects:honey_bee set value {id: 7, namespace: "aspects", name: "honey_bee", color: "#ffa41c", sound: "minecraft:entity.bee.loop"}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect.aspects:honey_bee

# Setup scoreboard objectives for the Aspect
scoreboard objectives add aspects.honey_bee.created_honey_bottles dummy
