# Clear existing temp data
data remove storage aspectlib:cache temp.config_builder.config
# Store data in temp storage for macro
$data modify storage aspectlib:cache temp.config_builder.config set from storage aspectlib:registry config[$(registry_config_list)]

# Add actions to body
function aspectlib:registry/config/dialog/build/action with storage aspectlib:cache temp.config_builder.config

# Loop if list count is above the registered list amount, otherwise finish building dialog and return success
## Build Dialog and Return
execute if score #aspects aspectlib.dummy > #aspects aspects.registry.config.list_index run return run function aspectlib:registry/config/dialog/build/dialog with storage aspectlib:cache temp.config_builder
## Recursion
scoreboard players add #aspects aspectlib.dummy 1
execute store result storage aspectlib:cache temp.config_builder.registry_config_list int 1 run scoreboard players get #aspects aspectlib.dummy
function aspectlib:registry/config/dialog/build/loop with storage aspectlib:cache temp.config_builder
