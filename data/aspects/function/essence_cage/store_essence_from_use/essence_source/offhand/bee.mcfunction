advancement revoke @s only aspects:essence_cage/store_essence_from_kills/bee

# Make sure the held Essence Cage is not awakened yet
execute unless predicate aspects:essence_cage/is_in_offhand run return fail

# Update scoreboard and add relevant essence count
function aspects:essence_cage/scoreboard/update_from_offhand
scoreboard players add @s aspects.essence.bug 4
scoreboard players add @s aspects.essence.flying 4
# Check potential breakpoints to become an Awakened Essence Cage, if so clean up and return
execute if function aspects:essence_cage/check_awaken_list/offhand run return run data remove storage aspectlib:dummy stored_essences
# Otherwise update the Essence Cage with new essence counts
execute store result storage aspectlib:dummy stored_essences.bug int 1 run scoreboard players get @s aspects.essence.bug
execute store result storage aspectlib:dummy stored_essences.flying int 1 run scoreboard players get @s aspects.essence.flying
function aspects:essence_cage/update_custom_data_offhand
function aspects:essence_cage/update_lore
# Clean up storage data
data remove storage aspectlib:dummy stored_essences
