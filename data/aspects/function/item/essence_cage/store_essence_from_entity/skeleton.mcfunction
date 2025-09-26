advancement revoke @s only aspects:item/essence_cage/store_essence_from_kills/skeleton

# Update the scoreboard with stored data in the Essence Cage
function aspects:item/essence_cage/scoreboard/update

# Update scoreboard and add relevant essence count
scoreboard players add @s aspects.essence.undead 3

# Store the update value back on the Essence Cage
execute store result storage aspectlib:dummy stored_essences.undead int 1 run scoreboard players get @s aspects.essence.undead
function aspects:item/essence_cage/update_custom_data
function aspects:item/essence_cage/update_lore

# Check potential breakpoints to become an Awakened Essence Cage, if so clean up and return
function aspects:item/essence_cage/check_awaken_list/all

# Clean up storage data
data remove storage aspectlib:dummy stored_essences
