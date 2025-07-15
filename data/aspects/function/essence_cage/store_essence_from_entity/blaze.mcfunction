advancement revoke @s only aspects:essence_cage/store_essence_from_kills/blaze

# Update the scoreboard with stored data in the Essence Cage
function aspects:essence_cage/scoreboard/update

# Update scoreboard and add relevant essence count
scoreboard players add @s aspects.essence.fire 5
scoreboard players add @s aspects.essence.steel 5

# Store the update value back on the Essence Cage
execute store result storage aspectlib:dummy stored_essences.fire int 1 run scoreboard players get @s aspects.essence.fire
execute store result storage aspectlib:dummy stored_essences.steel int 1 run scoreboard players get @s aspects.essence.steel
function aspects:essence_cage/update_custom_data
function aspects:essence_cage/update_lore

# Check potential breakpoints to become an Awakened Essence Cage, if so clean up and return
function aspects:essence_cage/check_awaken_list/all

# Clean up storage data
data remove storage aspectlib:dummy stored_essences
