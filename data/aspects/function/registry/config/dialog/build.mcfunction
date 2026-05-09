# Prepare data locations
scoreboard players reset #aspects aspectlib.dummy
data remove storage aspectlib:dummy config_builder
# Loop index (will be incremented by 1 at the beginning of every loop)
scoreboard players set #aspects aspectlib.dummy 0
execute store result storage aspectlib:dummy config_builder.registry_config_list int 1 run scoreboard players get #aspects aspectlib.dummy
# Dialog actions storage
data modify storage aspectlib:dummy config_builder.actions set value []

# Build dialog
function aspects:registry/config/dialog/build/loop with storage aspectlib:dummy config_builder
