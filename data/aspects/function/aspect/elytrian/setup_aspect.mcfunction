# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:elytrian set value {id: 6, namespace: "aspects", name: "elytrian", translatable: "aspect.aspects.elytrian", color: "#f2f10d"}

# Setup statistic tracking for the Aspect
function aspects:stats/aspect/initialize with storage aspects:aspect_list aspects:elytrian

# Setup scoreboard objectives for the Aspect
function aspects:aspect/elytrian/advancement/flying_marathon/scoreboard/initialize
function aspects:aspect/elytrian/fly_damage/initialize
function aspects:aspect/elytrian/rocket_damage/scoreboard/initialize
function aspects:aspect/elytrian/wings/scoreboard/initialize
