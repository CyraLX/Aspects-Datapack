# Fail if Essence has been Exhausted
execute if predicate aspects:item/essence_extractor/is_exhausted run return run function aspects:item/essence_extractor/fail_extraction

# Get current Stored Essences from Attacker's Essence Cage
execute as @p[tag=essence_extractor_attacker,distance=..32] run function aspects:item/essence_extractor/essence_cage/retrieve_data
# Store Essence amount into storage
execute store result storage aspectlib:dummy essence_amount int 1 run function aspects:item/essence_extractor/get_amount
# Add the Essences from the Entity into storage
function aspects:item/essence_extractor/set_type_amount with storage aspectlib:dummy

# Check if any essence was extracted
function aspects:item/essence_extractor/check_if_extract_failed

# Try awakening and/or update Attacker's Essence Cage
execute as @p[tag=essence_extractor_attacker,distance=..32] run function aspects:item/essence_extractor/essence_cage/update_item

# Cleanup Tags
function aspects:item/essence_extractor/tag/remove_all
