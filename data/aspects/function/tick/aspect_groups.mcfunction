# Every second...
execute unless predicate aspectlib:periodic_tick/20 run return fail

# Update Hydrophobic
execute if predicate aspects:aspect_group/is_hydrophobic if predicate aspectlib:flags/is_wet run function aspects:aspect_group/hydrophobic/logic/update
# Update Moisture Dependant
execute if predicate aspects:aspect_group/is_moisture_dependant if predicate aspectlib:flags/is_wet run function aspects:aspect_group/moisture_dependant/logic/update
