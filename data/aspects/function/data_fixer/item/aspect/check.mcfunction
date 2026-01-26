# Pull Aspect Item data
data remove storage aspectlib:dummy aspect_item
data modify storage aspectlib:dummy aspect_item set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect

# Do not continue if...
## Aspect Item already has the correct structure
execute if data storage aspectlib:dummy aspect_item.namespace run return fail
## Aspect Item doesn't have aspect data (assume it is not an Aspect Item)
execute unless data storage aspectlib:dummy aspect_item run return fail

# Fix Aspect Item
function aspects:data_fixer/item/aspect/fix with storage aspectlib:dummy
