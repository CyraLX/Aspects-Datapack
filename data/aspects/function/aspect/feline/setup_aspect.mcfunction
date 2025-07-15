# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: -2147483647 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:feline set value {id: 4, namespace: "aspects", name: "feline", translatable: "aspect.aspects.feline", color: "#f96600"}

# Setup statistic tracking for the Aspect
## Total amount of changes to this Aspect
scoreboard objectives add aspects.stats.feline.total dummy
scoreboard players add #aspects aspects.stats.feline.total 0
## Times this Aspect was switched off from
scoreboard objectives add aspects.stats.feline.faded dummy
scoreboard players add #aspects aspects.stats.feline.faded 0
## Current active users with the Aspect
scoreboard objectives add aspects.stats.feline.current dummy
scoreboard players add #aspects aspects.stats.feline.current 0
## Highest recorded active users of this Aspect
scoreboard objectives add aspects.stats.feline.peak dummy
scoreboard players add #aspects aspects.stats.feline.peak 0
## Times this Aspect was picked first
scoreboard objectives add aspects.stats.feline.first_pick dummy
scoreboard players add #aspects aspects.stats.feline.first_pick 0

# Setup scoreboard objectives for the Aspect
