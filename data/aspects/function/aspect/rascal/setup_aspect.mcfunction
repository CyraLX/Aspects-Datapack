# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: -2147483647 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:rascal set value {id: 8, namespace: "aspects", name: "rascal", translatable: "aspect.aspects.rascal", color: "#3A3B3C"}

# Setup statistic tracking for the Aspect
## Total amount of changes to this Aspect
scoreboard objectives add aspects.stats.rascal.total dummy
scoreboard players add #aspects aspects.stats.rascal.total 0
## Times this Aspect was switched off from
scoreboard objectives add aspects.stats.rascal.faded dummy
scoreboard players add #aspects aspects.stats.rascal.faded 0
## Current active users with the Aspect
scoreboard objectives add aspects.stats.rascal.current dummy
scoreboard players add #aspects aspects.stats.rascal.current 0
## Highest recorded active users of this Aspect
scoreboard objectives add aspects.stats.rascal.peak dummy
scoreboard players add #aspects aspects.stats.rascal.peak 0
## Times this Aspect was picked first
scoreboard objectives add aspects.stats.rascal.first_pick dummy
scoreboard players add #aspects aspects.stats.rascal.first_pick 0

# Setup scoreboard objectives for the Aspect
