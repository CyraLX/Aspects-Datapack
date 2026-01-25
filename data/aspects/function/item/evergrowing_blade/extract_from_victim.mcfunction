# Fail if Essence has been Exhausted
execute if predicate aspects:item/evergrowing_blade/is_exhausted run return run function aspects:item/evergrowing_blade/fail_extraction

# Get current Stored Essences from Attacker's Essence Cage
execute as @p[tag=evergrowing_blade_attacker,distance=..32] run function aspects:item/evergrowing_blade/essence_cage/retrieve_data
# Store Essence amount into storage
execute store result storage aspectlib:dummy essence_amount int 1 run function aspects:item/evergrowing_blade/get_amount
# Add the Essences from the Entity into storage
## If Off Hands has an active whitelist
execute if entity @p[tag=evergrowing_blade_attacker,distance=..32,predicate=aspects:item/essence_cage/whitelisted/offhand/any] run function aspects:item/evergrowing_blade/set_type_amount_whitelist with storage aspectlib:dummy
## If Off Hands's Essence Cage has an inavtive whitelist
execute if entity @p[tag=evergrowing_blade_attacker,distance=..32,predicate=aspects:item/essence_cage/whitelisted/offhand/empty] run function aspects:item/evergrowing_blade/set_type_amount with storage aspectlib:dummy

# Check if any essence was extracted
function aspects:item/evergrowing_blade/check_if_extract_failed

# Try awakening and/or update Attacker's Essence Cage
execute as @p[tag=evergrowing_blade_attacker,distance=..32] run function aspects:item/evergrowing_blade/essence_cage/update_item

# Cleanup Tags
function aspects:item/evergrowing_blade/tag/remove_all
