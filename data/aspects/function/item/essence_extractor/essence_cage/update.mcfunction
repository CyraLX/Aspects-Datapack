# Try to Awaken
function #aspects:item/essence_cage/check_awaken_list

# If Awakens return early
execute if predicate aspects:item/essence_cage/is_in_offhand_awakened run return fail

# Update data
item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_custom_data_from_storage

# Update lore
function aspects:item/essence_cage/lore/update

