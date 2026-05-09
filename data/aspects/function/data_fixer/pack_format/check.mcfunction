# Expose player ID
function aspectlib:expose/player/id
# Update previous and current pack_format data in player storage
function #aspects:data_fixer/pack_format/update with storage aspectlib:cache temp
# Run validate functions with the following data:
# Player ID, Previous and Current pack_format, active Aspect namespace, name and ID
## Reset/Default aspect data
data remove storage aspectlib:cache temp.aspect
data modify storage aspectlib:cache temp.aspect_id set value -2147483647
data modify storage aspectlib:cache temp.aspect_namespace set value "undefined"
data modify storage aspectlib:cache temp.aspect_name set value "undefined"
## Store aspect data
data modify storage aspectlib:cache temp.aspect set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
execute if data storage aspectlib:cache temp.aspect run data modify storage aspectlib:cache temp.aspect_id set from storage aspectlib:cache temp.aspect.id
execute if data storage aspectlib:cache temp.aspect run data modify storage aspectlib:cache temp.aspect_namespace set from storage aspectlib:cache temp.aspect.namespace
execute if data storage aspectlib:cache temp.aspect run data modify storage aspectlib:cache temp.aspect_name set from storage aspectlib:cache temp.aspect.name
function aspects:data_fixer/pack_format/execute_validate_data_tag with storage aspectlib:cache temp
