# Logger
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#7700A7",extra:["[AspectLib]: "]},"Registering Configs..."]}
# Initialize Scoreboards
scoreboard objectives add aspects.registry.config.amount dummy
scoreboard objectives add aspects.registry.config.list_index dummy

# Set registered Config amount to 0
scoreboard players set #aspects aspects.registry.config.amount 0
scoreboard players set #aspects aspects.registry.config.list_index 0

# Recreate registry table
data modify storage aspectlib:registry config set value []
# Register all Configs
function #aspectlib:registry/register_configs
# Store registered amounts
execute store result score #aspects aspects.registry.config.amount run data get storage aspectlib:registry config
execute store result score #aspects aspects.registry.config.list_index run data get storage aspectlib:registry config

# Remove 1 from registered amounts to use as list index
scoreboard players remove #aspects aspects.registry.config.list_index 1

# Logger
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#7700A7",extra:["[AspectLib]: "]},"Finished Registering ",{"score":{name:"#aspects", objective:"aspects.registry.config.amount"},color:"blue"}, " Configs!"]}

# Build Config List Dialog
function aspectlib:registry/config/dialog/build
