# Logger
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]}," Registering Aspects..."]}
# Initialize Scoreboards
scoreboard objectives add aspects.aspect.registry.amount dummy
# Set registered Aspect amount to 0
scoreboard players set #aspects aspects.aspect.registry.amount 0

# Recreate registry table
data modify storage aspects:registry aspect set value {}
# Recreate random Aspect list
data modify storage aspects:registry random_aspect_list set value []
# Register all Aspects
function #aspects:registry/register_aspects

# Logger
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},"Finished Registering ",{"score":{name:"#aspects", objective:"aspects.aspect.registry.amount"},color:blue}, " Aspects!"]}
