# Logger
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},"Registering Configs..."]}
# Initialize Scoreboards
scoreboard objectives add aspects.registry.config.amount dummy
scoreboard objectives add aspects.registry.config.list_index dummy

# Set registered Config amount to 0
scoreboard players set #aspects aspects.registry.config.amount 0
scoreboard players set #aspects aspects.registry.config.list_index 0

# Recreate registry table
data modify storage aspects:registry config set value []
# Register all Configs
function #aspects:registry/register_configs
# Store registered amounts
execute store result score #aspects aspects.registry.config.amount run data get storage aspects:registry config
execute store result score #aspects aspects.registry.config.list_index run data get storage aspects:registry config

# Remove 1 from registered amounts to use as list index
scoreboard players remove #aspects aspects.registry.config.list_index 1

# Logger
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},"Finished Registering ",{"score":{name:"#aspects", objective:"aspects.registry.config.amount"},color:"blue"}, " Configs!"]}

# Build Config List Dialog
function aspects:registry/config/dialog/build
