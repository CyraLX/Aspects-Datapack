advancement revoke @s only aspects:item/essence_cage/store_essence_from_kills/elder_guardian

# Update the scoreboard with stored data in the Essence Cage
function aspects:item/essence_cage/scoreboard/update

# Update scoreboard and add relevant essence count
scoreboard players add @s aspects.essence.apex 15
scoreboard players add @s aspects.essence.aquatic 15
scoreboard players add @s aspects.essence.steel 15

# Store the update value back on the Essence Cage
execute store result storage aspectlib:dummy stored_essences.apex int 1 run scoreboard players get @s aspects.essence.apex
execute store result storage aspectlib:dummy stored_essences.aquatic int 1 run scoreboard players get @s aspects.essence.aquatic
execute store result storage aspectlib:dummy stored_essences.steel int 1 run scoreboard players get @s aspects.essence.steel
function aspects:item/essence_cage/update_custom_data
function aspects:item/essence_cage/update_lore

# Check potential breakpoints to become an Awakened Essence Cage, if so clean up and return
function aspects:item/essence_cage/check_awaken_list/all

# Clean up storage data
data remove storage aspectlib:dummy stored_essences
