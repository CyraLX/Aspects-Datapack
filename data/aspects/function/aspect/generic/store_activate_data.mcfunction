# Expose the player ID
function aspectlib:player/id/expose
# Reset/Default aspect data
## New Aspect
data remove storage aspectlib:dummy new_aspect
data modify storage aspectlib:dummy new_aspect_id set value -2147483647
data modify storage aspectlib:dummy new_aspect_namespace set value "undefined"
data modify storage aspectlib:dummy new_aspect_name set value "undefined"
## Old Aspect
data remove storage aspectlib:dummy old_aspect
data modify storage aspectlib:dummy old_aspect_id set value -2147483647
data modify storage aspectlib:dummy old_aspect_namespace set value "undefined"
data modify storage aspectlib:dummy old_aspect_name set value "undefined"
# Store previous and new aspect data
## New aspect
data modify storage aspectlib:dummy new_aspect set from storage aspectlib:dummy function_origin
data modify storage aspectlib:dummy new_aspect_id set from storage aspectlib:dummy new_aspect.id
data modify storage aspectlib:dummy new_aspect_namespace set from storage aspectlib:dummy new_aspect.namespace
data modify storage aspectlib:dummy new_aspect_name set from storage aspectlib:dummy new_aspect.name
## Old Aspect (cancel early if missing)
data modify storage aspectlib:dummy old_aspect set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
execute unless data storage aspectlib:dummy old_aspect run return fail
data modify storage aspectlib:dummy old_aspect_id set from storage aspectlib:dummy old_aspect.id
data modify storage aspectlib:dummy old_aspect_namespace set from storage aspectlib:dummy old_aspect.namespace
data modify storage aspectlib:dummy old_aspect_name set from storage aspectlib:dummy old_aspect.name
