# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: -2147483647 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:merling set value {id: 1, namespace: "aspects", name: "merling", translatable: "aspect.aspects.merling", color: "#2e89f1"}

# Setup statistic tracking for the Aspect
## Total amount of changes to this Aspect
scoreboard objectives add aspects.stats.merling.total dummy
scoreboard players add #aspects aspects.stats.merling.total 0
## Times this Aspect was switched off from
scoreboard objectives add aspects.stats.merling.faded dummy
scoreboard players add #aspects aspects.stats.merling.faded 0
## Current active users with the Aspect
scoreboard objectives add aspects.stats.merling.current dummy
scoreboard players add #aspects aspects.stats.merling.current 0
## Highest recorded active users of this Aspect
scoreboard objectives add aspects.stats.merling.peak dummy
scoreboard players add #aspects aspects.stats.merling.peak 0
## Times this Aspect was picked first
scoreboard objectives add aspects.stats.merling.first_pick dummy
scoreboard players add #aspects aspects.stats.merling.first_pick 0

# Setup scoreboard objectives for the Aspect
