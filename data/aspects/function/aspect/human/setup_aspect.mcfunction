# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:human set value {id: 0, namespace: "aspects", name: "human", translatable: "aspect.aspects.human", color: "#8b7e77"}

# Setup statistic tracking for the Aspect
function aspects:stats/aspect/initialize with storage aspects:aspect_list aspects:human

# Setup scoreboard objectives for the Aspect
