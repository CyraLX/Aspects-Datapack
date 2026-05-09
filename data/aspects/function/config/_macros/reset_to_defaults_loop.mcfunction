# Clear existing temp data
data remove storage aspectlib:dummy config
# Store data in temp storage for macro
$data modify storage aspectlib:dummy config set from storage aspects:registry config[$(registry_config_list)]

# Set Default
function aspects:config/_macros/set_defaults with storage aspectlib:dummy config

# Reduce list count
scoreboard players remove #aspects aspectlib.dummy 1
# Loop if list count is 0 or above, otherwise return success
## Return
execute unless score #aspects aspectlib.dummy matches 0.. run return 1
## Recursion
execute store result storage aspectlib:dummy registry_config_list int 1 run scoreboard players get #aspects aspectlib.dummy
function aspects:config/_macros/reset_to_defaults_loop with storage aspectlib:dummy
