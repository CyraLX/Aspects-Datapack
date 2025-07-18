# Do not run if not holding an Essence Cage
execute unless predicate aspects:essence_cage/is_held run return fail

# If the Essence Cage is in the Main Hand, update that
execute if predicate aspects:essence_cage/is_in_mainhand run return run function aspects:essence_cage/update_custom_data_mainhand
# Otherwise if the Essence Cage is in the Off Hand, update that instead
execute if predicate aspects:essence_cage/is_in_offhand run return run function aspects:essence_cage/update_custom_data_offhand