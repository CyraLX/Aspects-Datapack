# Update scoreboards
function aspects:item/essence_cage/lore/mainhand/retrieve_to_storage

# Reset existing lore
item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/reset
# Apply Stored Essences
function aspects:item/essence_cage/lore/mainhand/add_stored_essences
# Apply Whitelist filter
execute if predicate aspects:item/essence_cage/whitelisted/mainhand/any run function aspects:item/essence_cage/lore/mainhand/add_whitelist
# Add seperator
item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/seperator
# Add footer
item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/footer
