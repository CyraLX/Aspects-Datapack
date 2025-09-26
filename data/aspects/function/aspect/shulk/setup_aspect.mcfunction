# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:aspect_list aspects:shulk set value {id: 3, namespace: "aspects", name: "shulk", color: "#b953bd", sound: "minecraft:entity.shulker.ambient"}

# Setup statistic tracking for the Aspect
function aspects:stats/aspect/initialize with storage aspects:aspect_list aspects:shulk

# Setup scoreboard objectives for the Aspect
scoreboard objectives add aspects.shulk.shell_timer dummy
function aspects:item/focus/shulk/storage/initialize_scoreboard
