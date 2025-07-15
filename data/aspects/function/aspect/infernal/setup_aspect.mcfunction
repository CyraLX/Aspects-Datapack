# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: -2147483647 to 2147483647
## namespace = Namespace string of your project
## name = Name string of your Aspect
## translatable = Translatable string of your Aspect
## color = Hexidecimal color value for your Aspect
data modify storage aspects:aspect_list aspects:infernal set value {id: 5, namespace: "aspects", name: "infernal", translatable: "aspect.aspects.infernal", color: "#ac2525"}

# Setup statistic tracking for the Aspect
## Total amount of changes to this Aspect
scoreboard objectives add aspects.stats.infernal.total dummy
scoreboard players add #aspects aspects.stats.infernal.total 0
## Times this Aspect was switched off from
scoreboard objectives add aspects.stats.infernal.faded dummy
scoreboard players add #aspects aspects.stats.infernal.faded 0
## Current active users with the Aspect
scoreboard objectives add aspects.stats.infernal.current dummy
scoreboard players add #aspects aspects.stats.infernal.current 0
## Highest recorded active users of this Aspect
scoreboard objectives add aspects.stats.infernal.peak dummy
scoreboard players add #aspects aspects.stats.infernal.peak 0
## Times this Aspect was picked first
scoreboard objectives add aspects.stats.infernal.first_pick dummy
scoreboard players add #aspects aspects.stats.infernal.first_pick 0

# Setup scoreboard objectives for the Aspect
