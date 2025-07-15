# Expose the player ID
function aspectlib:player_id/expose
# Assign default aspect data
data modify storage aspectlib:dummy new_aspect_namespace set value "undefined"
data modify storage aspectlib:dummy new_aspect_name set value "undefined"
data modify storage aspectlib:dummy old_aspect_namespace set value "undefined"
data modify storage aspectlib:dummy old_aspect_name set value "undefined"
# Store previous and new aspect data
data modify storage aspectlib:dummy old_aspect set from entity @s equipment.body.components.minecraft:custom_data.aspects.aspect
data modify storage aspectlib:dummy old_aspect_namespace set from storage aspectlib:dummy old_aspect.namespace
data modify storage aspectlib:dummy old_aspect_name set from storage aspectlib:dummy old_aspect.name
data modify storage aspectlib:dummy new_aspect set from storage aspectlib:dummy function_origin
data modify storage aspectlib:dummy new_aspect_namespace set from storage aspectlib:dummy new_aspect.namespace
data modify storage aspectlib:dummy new_aspect_name set from storage aspectlib:dummy new_aspect.name