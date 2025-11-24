# Every second
execute unless predicate aspectlib:periodic_tick/20 run return fail

# Hydrophobia
execute if predicate aspects:aspect_group/is_hydrophobic if predicate aspectlib:flags/is_wet run function aspects:aspect/generic/hydrophobia/update
# Moisture
execute if predicate aspects:aspect_group/is_moisture_dependant if predicate aspectlib:flags/is_wet run function aspects:aspect/generic/moisture/update
