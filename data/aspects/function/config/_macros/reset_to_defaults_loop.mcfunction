# Clear existing temp data
data remove storage aspectlib:cache temp.config
# Store data in temp storage for macro
$data modify storage aspectlib:cache temp.config set from storage aspects:registry config[$(registry_config_list)]

# Set Default
function aspects:config/_macros/set_defaults with storage aspectlib:cache temp.config

# Reduce list count
scoreboard players remove #aspects aspectlib.dummy 1
# Loop if list count is 0 or above, otherwise return success
## Return
execute unless score #aspects aspectlib.dummy matches 0.. run return 1
## Recursion
execute store result storage aspectlib:cache temp.registry_config_list int 1 run scoreboard players get #aspects aspectlib.dummy
function aspects:config/_macros/reset_to_defaults_loop with storage aspectlib:cache temp
