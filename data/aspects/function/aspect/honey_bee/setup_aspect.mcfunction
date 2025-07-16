# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:honey_bee set value {id: 7, namespace: "aspects", name: "honey_bee", translatable: "aspect.aspects.honey_bee", color: "#ffa41c"}

# Setup statistic tracking for the Aspect
function aspects:stats/aspect/initialize with storage aspects:aspect_list aspects:honey_bee

# Setup scoreboard objectives for the Aspect
scoreboard objectives add aspects.honey_bee.created_honey_bottles dummy
