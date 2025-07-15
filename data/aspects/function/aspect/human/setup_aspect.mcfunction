# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: -2147483647 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:human set value {id: 0, namespace: "aspects", name: "human", translatable: "aspect.aspects.human", color: "#8b7e77"}

# Setup statistic tracking for the Aspect
## Total amount of changes to this Aspect
scoreboard objectives add aspects.stats.human.total dummy
scoreboard players add #aspects aspects.stats.human.total 0
## Times this Aspect was switched off from
scoreboard objectives add aspects.stats.human.faded dummy
scoreboard players add #aspects aspects.stats.human.faded 0
## Current active users with the Aspect
scoreboard objectives add aspects.stats.human.current dummy
scoreboard players add #aspects aspects.stats.human.current 0
## Highest recorded active users of this Aspect
scoreboard objectives add aspects.stats.human.peak dummy
scoreboard players add #aspects aspects.stats.human.peak 0
## Times this Aspect was picked first
scoreboard objectives add aspects.stats.human.first_pick dummy
scoreboard players add #aspects aspects.stats.human.first_pick 0

# Setup scoreboard objectives for the Aspect
