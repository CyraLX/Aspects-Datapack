# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:elytrian set value {id: 6, namespace: "aspects", name: "elytrian", translatable: "aspect.aspects.elytrian", color: "#f2f10d"}

# Setup statistic tracking for the Aspect
## Total amount of changes to this Aspect
scoreboard objectives add aspects.stats.elytrian.total dummy
scoreboard players add #aspects aspects.stats.elytrian.total 0
## Times this Aspect was switched off from
scoreboard objectives add aspects.stats.elytrian.faded dummy
scoreboard players add #aspects aspects.stats.elytrian.faded 0
## Current active users with the Aspect
scoreboard objectives add aspects.stats.elytrian.current dummy
scoreboard players add #aspects aspects.stats.elytrian.current 0
## Highest recorded active users of this Aspect
scoreboard objectives add aspects.stats.elytrian.peak dummy
scoreboard players add #aspects aspects.stats.elytrian.peak 0
## Times this Aspect was picked first
scoreboard objectives add aspects.stats.elytrian.first_pick dummy
scoreboard players add #aspects aspects.stats.elytrian.first_pick 0

# Setup scoreboard objectives for the Aspect
function aspects:aspect/elytrian/advancement/flying_marathon/scoreboard/initialize
function aspects:aspect/elytrian/fly_damage/initialize
function aspects:aspect/elytrian/rocket_damage/scoreboard/initialize
function aspects:aspect/elytrian/wings/scoreboard/initialize

