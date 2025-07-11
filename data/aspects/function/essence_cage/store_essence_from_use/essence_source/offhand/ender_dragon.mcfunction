advancement revoke @s only aspects:essence_cage/store_essence_from_kills/ender_dragon

# Make sure the held Essence Cage is not awakened yet
execute unless predicate aspects:essence_cage/is_in_offhand run return fail

# Update scoreboard and add relevant essence count
function aspects:essence_cage/scoreboard/update_from_offhand
scoreboard players add @s aspects.essence.apex 40
scoreboard players add @s aspects.essence.flying 40
scoreboard players add @s aspects.essence.void 40
# Check potential breakpoints to become an Awakened Essence Cage, if so clean up and return
execute if function aspects:essence_cage/check_awaken_list/offhand run return run data remove storage aspects:dummy stored_essences
# Otherwise update the Essence Cage with new essence counts
execute store result storage aspects:dummy stored_essences.apex int 1 run scoreboard players get @s aspects.essence.apex
execute store result storage aspects:dummy stored_essences.flying int 1 run scoreboard players get @s aspects.essence.flying
execute store result storage aspects:dummy stored_essences.void int 1 run scoreboard players get @s aspects.essence.void
function aspects:essence_cage/update_custom_data_offhand
function aspects:essence_cage/update_lore
# Clean up storage data
data remove storage aspects:dummy stored_essences
