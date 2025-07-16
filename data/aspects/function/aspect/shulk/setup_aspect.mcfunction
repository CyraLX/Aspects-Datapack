# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:shulk set value {id: 3, namespace: "aspects", name: "shulk", translatable: "aspect.aspects.shulk", color: "#b953bd"}

# Setup statistic tracking for the Aspect
function aspects:stats/aspect/initialize with storage aspects:aspect_list aspects:shulk

# Setup scoreboard objectives for the Aspect
scoreboard objectives add aspects.shulk.shell_timer dummy
function aspects:focus/shulk/storage/initialize_scoreboard
