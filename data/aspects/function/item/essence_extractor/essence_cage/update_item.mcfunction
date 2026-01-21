# Try to Awaken if not Collector Cage
execute unless predicate aspects:item/essence_cage_collector/is_in_offhand run function #aspects:item/essence_cage/check_awaken_list
# If Awakens return early
execute if predicate aspects:item/essence_cage_awakened/is_in_offhand run return fail

# Update data
item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_custom_data_from_storage
# Update lore
function aspects:item/essence_cage/lore/offhand/update
