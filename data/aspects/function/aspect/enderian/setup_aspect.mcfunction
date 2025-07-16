# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:aspect_list aspects:enderian set value {id: 2, namespace: "aspects", name: "enderian", color: "#7749cb", sound: "minecraft:entity.enderman.ambient"}

# Setup statistic tracking for the Aspect
function aspects:stats/aspect/initialize with storage aspects:aspect_list aspects:enderian

# Setup scoreboard objectives for the Aspect
function aspects:focus/enderian/raycast/initialize_scoreboards
