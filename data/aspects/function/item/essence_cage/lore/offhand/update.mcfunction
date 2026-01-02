# Update scoreboards
function aspects:item/essence_cage/lore/offhand/retrieve_to_storage

# Reset existing lore
item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/reset
# Apply Stored Essences
function aspects:item/essence_cage/lore/offhand/add_stored_essences
# Apply Whitelist filter
execute if predicate aspects:item/essence_cage/whitelisted/offhand/any run function aspects:item/essence_cage/lore/offhand/add_whitelist
# Add seperator
item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/seperator
# Add footer
item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/footer
