# Perform water check
execute if predicate aspectlib:periodic_tick/20 if predicate aspectlib:gamemode/survival_or_adventure run function aspectlib:predicate/check_if_in_water
# Hydrophobia
execute if predicate aspects:aspect_group/is_hydrophobic if predicate aspectlib:checked_if_hitbox_is_in_water run function aspects:aspect_group/hydrophobic/logic/update
# Moisture
execute if predicate aspects:aspect_group/is_moisture_dependant if predicate aspectlib:checked_if_hitbox_is_in_water run function aspects:aspect_group/moisture_dependant/logic/update
