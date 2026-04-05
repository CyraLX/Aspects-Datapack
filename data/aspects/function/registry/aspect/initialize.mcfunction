# Logger
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]}," Registering Aspects..."]}
# Initialize Scoreboards
scoreboard objectives add aspects.registry.aspect.amount dummy
scoreboard objectives add aspects.registry.aspect.amount_random dummy
scoreboard objectives add aspects.registry.aspect.list_index dummy
scoreboard objectives add aspects.registry.aspect.list_random_index dummy

# Set registered Aspect amount to 0
scoreboard players set #aspects aspects.registry.aspect.amount 0
scoreboard players set #aspects aspects.registry.aspect.amount_random 0
scoreboard players set #aspects aspects.registry.aspect.list_index 0
scoreboard players set #aspects aspects.registry.aspect.list_random_index 0

# Recreate registry table
data modify storage aspects:registry aspect set value {}
# Recreate legacy random Aspect list
data remove storage aspects:registry random_aspect_list
# Register all Aspects
function #aspects:registry/register_aspects
# Store registered amounts
execute store result score #aspects aspects.registry.aspect.amount run data get storage aspects:registry aspect.list
execute store result score #aspects aspects.registry.aspect.amount_random run data get storage aspects:registry aspect.list_random
execute store result score #aspects aspects.registry.aspect.list_index run data get storage aspects:registry aspect.list
execute store result score #aspects aspects.registry.aspect.list_random_index run data get storage aspects:registry aspect.list_random

# Remove 1 from registered amounts to use as list index
scoreboard players remove #aspects aspects.registry.aspect.list_index 1
scoreboard players remove #aspects aspects.registry.aspect.list_random_index 1

# Logger
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},"Finished Registering ",{"score":{name:"#aspects", objective:"aspects.registry.aspect.amount"},color:blue}, " Aspects!"]}
