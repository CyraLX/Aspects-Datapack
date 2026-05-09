# Clear existing temp data
data remove storage aspectlib:dummy config.registry_entry
# Store data in temp storage for macro
$data modify storage aspectlib:dummy config.registry_entry set from storage aspectlib:dummy config.registry[$(list_index)]

# Add actions to body
## Get entry translatable
function aspects:aspect/get_translatable_with_namespace with storage aspectlib:dummy config.registry_entry
data modify storage aspectlib:dummy config.registry_entry_translatable set from storage aspectlib:dummy aspect_translatable
## Store entry ID
data modify storage aspectlib:dummy config.registry_entry_id set from storage aspectlib:dummy config.registry_entry.id
## Build Action
function aspects:config/player/force_default_aspect/build/action_list/action with storage aspectlib:dummy config

# Loop if list count is above the registered list amount, otherwise return success
## Return
execute if score #aspects aspectlib.dummy >= #aspects aspects.registry.aspect.list_index run return run data get storage aspects:registry config[{namespace:"aspects",type:"player",name:"force_default_aspect"}].dialog_data.action_list
## Recursion
scoreboard players add #aspects aspectlib.dummy 1
execute store result storage aspectlib:dummy config.list_index int 1 run scoreboard players get #aspects aspectlib.dummy
function aspects:config/player/force_default_aspect/build/action_list/loop with storage aspectlib:dummy config
