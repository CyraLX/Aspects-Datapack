# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 10000000
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## sound = Sound Event for your Aspect
data modify storage aspects:aspect_list aspects:feline set value {id: 4, namespace: "aspects", name: "feline", color: "#f96600", sound: "minecraft:entity.cat.ambient"}

# Setup statistic tracking for the Aspect
function aspects:stats/aspect/initialize with storage aspects:aspect_list aspects:feline

# Setup scoreboard objectives for the Aspect
function aspects:aspect/feline/predator/scoreboard/initialize
function aspects:focus/feline/initialize_scoreboard
