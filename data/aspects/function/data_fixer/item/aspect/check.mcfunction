# Pull Aspect Item data
data remove storage aspectlib:dummy aspect_item
data modify storage aspectlib:dummy aspect_item set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect

# Do not continue if Aspect Item doesn't have aspect data (assume it is not an Aspect Item)
execute unless data storage aspectlib:dummy aspect_item run return fail

# If the Aspect Item doesn't have the correct structure, fix it by pulling data from the registry
## Pre name/namespace split
execute unless data storage aspectlib:dummy aspect_item.namespace run return run function aspects:data_fixer/item/aspect/fix_name_namespace with storage aspectlib:dummy
## Pre shadow_color addition
execute unless data storage aspectlib:dummy aspect_item.shadow_color run return run function aspects:data_fixer/item/aspect/fix_shadow_color with storage aspectlib:dummy aspect_item
 