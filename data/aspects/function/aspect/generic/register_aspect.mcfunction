# Logger
$execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] {text:"",color:"#aaaaaa",extra:[{text:"| ",color:"green"},{translate:"$(namespace)",color:"aqua"}," defined ",{translate:"aspect.$(namespace).$(name)",color:"$(color)",shadow_color:$(shadow_color)}," Aspect"]}

# Increase registered Aspect count
scoreboard players add #aspects aspects.aspect.registry.amount 1

# Add the Aspect to the randomization list
$execute store result score #aspects aspectlib.dummy run data get storage aspects:registry aspect."$(namespace):$(name)".prevent_random
$execute unless score #aspects aspectlib.dummy matches 1 run data modify storage aspects:registry random_aspect_list append value {namespace:"$(namespace)", name:"$(name)"}

# Setup statistic tracking for the Aspect
## Total amount of changes to an Aspect
$scoreboard players add #$(namespace):$(name) aspects.aspect_stats.total 0
## Times an Aspect was switched off from
$scoreboard players add #$(namespace):$(name) aspects.aspect_stats.faded 0
## Currently active users with an Aspect
$scoreboard players add #$(namespace):$(name) aspects.aspect_stats.active 0
## Highest recorded active users of an Aspect
$scoreboard players add #$(namespace):$(name) aspects.aspect_stats.active_peak 0
## Times an Aspect was picked as their first choice
$scoreboard players add #$(namespace):$(name) aspects.aspect_stats.first_pick 0
## Times an Aspect used their Focus
$scoreboard players add #$(namespace):$(name) aspects.aspect_stats.focus_uses 0
