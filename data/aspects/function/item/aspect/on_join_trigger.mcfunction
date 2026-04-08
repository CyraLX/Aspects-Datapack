# Get Player ID
function aspectlib:expose/player/id
# Get Player's Aspect
function aspects:expose/aspect/from_player_id with storage aspectlib:dummy
# Get Player's Aspect registry
function aspects:expose/aspect/from_aspect_id with storage aspectlib:dummy aspect

# Based on Player's Aspect registry...
## ...update Aspect Item data
item modify entity @s armor.body {function:"minecraft:copy_custom_data",source:{type:"minecraft:storage",source:"aspectlib:dummy"},ops:[{op:"replace",source:"aspect",target:"aspects.aspect"}]}
## ...update Player Storage data
function aspects:item/aspect/update_player_storage_macro with storage aspectlib:dummy
