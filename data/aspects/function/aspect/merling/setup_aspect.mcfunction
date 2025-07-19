# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 10000000
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:aspect_list aspects:merling set value {id: 1, namespace: "aspects", name: "merling", color: "#2e89f1", sound: "minecraft:entity.tropical_fish.flop"}

# Setup statistic tracking for the Aspect
function aspects:stats/aspect/initialize with storage aspects:aspect_list aspects:merling

# Setup scoreboard objectives for the Aspect
