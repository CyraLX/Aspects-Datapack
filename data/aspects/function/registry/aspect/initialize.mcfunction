# Logger
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]}," Registering Aspects..."]}

# Recreate registry table
data modify storage aspects:registry aspect set value {}
# Register all Aspects
function #aspects:registry/register_aspects

# Logger
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},"Finished Registering Aspects!"]}
