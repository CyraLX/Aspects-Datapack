# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: -2147483647 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:honey_bee set value {id: 7, namespace: "aspects", name: "honey_bee", translatable: "aspect.aspects.honey_bee", color: "#ffa41c"}

# Setup statistic tracking for the Aspect
## Total amount of changes to this Aspect
scoreboard objectives add aspects.stats.honey_bee.total dummy
scoreboard players add #aspects aspects.stats.honey_bee.total 0
## Times this Aspect was switched off from
scoreboard objectives add aspects.stats.honey_bee.faded dummy
scoreboard players add #aspects aspects.stats.honey_bee.faded 0
## Current active users with the Aspect
scoreboard objectives add aspects.stats.honey_bee.current dummy
scoreboard players add #aspects aspects.stats.honey_bee.current 0
## Highest recorded active users of this Aspect
scoreboard objectives add aspects.stats.honey_bee.peak dummy
scoreboard players add #aspects aspects.stats.honey_bee.peak 0
## Times this Aspect was picked first
scoreboard objectives add aspects.stats.honey_bee.first_pick dummy
scoreboard players add #aspects aspects.stats.honey_bee.first_pick 0

# Setup scoreboard objectives for the Aspect
scoreboard objectives add aspects.honey_bee.created_honey_bottles dummy
