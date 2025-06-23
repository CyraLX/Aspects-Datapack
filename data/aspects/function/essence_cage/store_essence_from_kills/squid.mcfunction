advancement revoke @s only aspects:essence_cage/store_essence_from_kills/squid

# Make sure the held Essence Cage is not awakened yet
execute unless predicate aspects:essence_cage/is_in_offhand run return fail

# Update scoreboard and add relevant essence count
function aspects:essence_cage/scoreboard/update_from_offhand
scoreboard players add @s aspects.essence.aquatic 2
scoreboard players add @s aspects.essence.dark 2
# Check potential breakpoints to become an Awakened Essence Cage, if so clean up and return
execute if function aspects:essence_cage/check_awaken_list/offhand run return run data remove storage aspects:dummy stored_essences
# Otherwise update the Essence Cage with new essence counts
execute store result storage aspects:dummy stored_essences.aquatic int 1 run scoreboard players get @s aspects.essence.aquatic
execute store result storage aspects:dummy stored_essences.dark int 1 run scoreboard players get @s aspects.essence.dark
function aspects:essence_cage/update_custom_data_offhand
function aspects:essence_cage/update_lore
# Clean up storage data
data remove storage aspects:dummy stored_essences
