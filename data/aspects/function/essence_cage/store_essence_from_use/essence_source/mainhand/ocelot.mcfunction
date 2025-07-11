advancement revoke @s only aspects:essence_cage/store_essence_from_kills/ocelot

# Make sure the held Essence Cage is not awakened yet
execute unless predicate aspects:essence_cage/is_in_mainhand run return fail

# Update scoreboard and add relevant essence count
function aspects:essence_cage/scoreboard/update_from_mainhand
scoreboard players add @s aspects.essence.feline 8
scoreboard players add @s aspects.essence.wild 8
# Check potential breakpoints to become an Awakened Essence Cage, if so clean up and return
execute if function aspects:essence_cage/check_awaken_list/mainhand run return run data remove storage aspects:dummy stored_essences
# Otherwise update the Essence Cage with new essence counts
execute store result storage aspects:dummy stored_essences.feline int 1 run scoreboard players get @s aspects.essence.feline
execute store result storage aspects:dummy stored_essences.wild int 1 run scoreboard players get @s aspects.essence.wild
function aspects:essence_cage/update_custom_data_mainhand
function aspects:essence_cage/update_lore
# Clean up storage data
data remove storage aspects:dummy stored_essences
