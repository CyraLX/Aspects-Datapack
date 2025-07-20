# Expose player ID
function aspectlib:player/id/expose
# Update previous and current pack_format data in player storage
function #aspects:data_fixer/pack_format/update with storage aspectlib:dummy
# Fix the Aspect Item
function aspects:data_fixer/pack_format/trigger_fix_aspect_item
# Run validate functions with the following data:
# Player ID, Previous and Current pack_format, active Aspect namespace, name and ID
## Reset/Default aspect data
data remove storage aspectlib:dummy aspect
data modify storage aspectlib:dummy aspect_id set value -2147483647
data modify storage aspectlib:dummy aspect_namespace set value "undefined"
data modify storage aspectlib:dummy aspect_name set value "undefined"
## Store aspect data
data modify storage aspectlib:dummy aspect set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
execute if data storage aspectlib:dummy aspect run data modify storage aspectlib:dummy aspect_id set from storage aspectlib:dummy aspect.id
execute if data storage aspectlib:dummy aspect run data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect.namespace
execute if data storage aspectlib:dummy aspect run data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect.name
function aspects:data_fixer/pack_format/execute_validate_data_tag with storage aspectlib:dummy
