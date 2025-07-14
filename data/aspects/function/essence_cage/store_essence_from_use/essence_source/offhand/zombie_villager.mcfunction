advancement revoke @s only aspects:essence_cage/store_essence_from_kills/zombie_villager

# Make sure the held Essence Cage is not awakened yet
execute unless predicate aspects:essence_cage/is_in_offhand run return fail

# Update scoreboard and add relevant essence count
function aspects:essence_cage/scoreboard/update_from_offhand
scoreboard players add @s aspects.essence.humanoid 6
scoreboard players add @s aspects.essence.undead 6
# Check potential breakpoints to become an Awakened Essence Cage, if so clean up and return
execute if function aspects:essence_cage/check_awaken_list/offhand run return run data remove storage aspectlib:dummy stored_essences
# Otherwise update the Essence Cage with new essence counts
execute store result storage aspectlib:dummy stored_essences.humanoid int 1 run scoreboard players get @s aspects.essence.humanoid
execute store result storage aspectlib:dummy stored_essences.undead int 1 run scoreboard players get @s aspects.essence.undead
function aspects:essence_cage/update_custom_data_offhand
function aspects:essence_cage/update_lore
# Clean up storage data
data remove storage aspectlib:dummy stored_essences
