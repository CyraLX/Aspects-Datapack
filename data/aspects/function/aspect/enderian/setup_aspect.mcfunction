# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:enderian set value {id: 2, namespace: "aspects", name: "enderian", translatable: "aspect.aspects.enderian", color: "#7749cb"}

# Setup statistic tracking for the Aspect
function aspects:stats/aspect/initialize with storage aspects:aspect_list aspects:enderian

# Setup scoreboard objectives for the Aspect
function aspects:focus/enderian/raycast/initialize_scoreboards
