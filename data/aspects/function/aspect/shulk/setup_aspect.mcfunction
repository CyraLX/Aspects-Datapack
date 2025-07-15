# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: -2147483647 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:shulk set value {id: 3, namespace: "aspects", name: "shulk", translatable: "aspect.aspects.shulk", color: "#b953bd"}

# Setup statistic tracking for the Aspect
## Total amount of changes to this Aspect
scoreboard objectives add aspects.stats.shulk.total dummy
scoreboard players add #aspects aspects.stats.shulk.total 0
## Times this Aspect was switched off from
scoreboard objectives add aspects.stats.shulk.faded dummy
scoreboard players add #aspects aspects.stats.shulk.faded 0
## Current active users with the Aspect
scoreboard objectives add aspects.stats.shulk.current dummy
scoreboard players add #aspects aspects.stats.shulk.current 0
## Highest recorded active users of this Aspect
scoreboard objectives add aspects.stats.shulk.peak dummy
scoreboard players add #aspects aspects.stats.shulk.peak 0
## Times this Aspect was picked first
scoreboard objectives add aspects.stats.shulk.first_pick dummy
scoreboard players add #aspects aspects.stats.shulk.first_pick 0

# Setup scoreboard objectives for the Aspect
scoreboard objectives add aspects.shulk.shell_timer dummy
