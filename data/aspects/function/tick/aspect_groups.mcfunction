# Every second...
execute unless predicate aspectlib:periodic_tick/20 run return fail
# If is survival...
execute unless predicate aspectlib:gamemode/survival_or_adventure run return fail

# Update Hydrophobic
execute if predicate aspects:aspect_group/is_hydrophobic run function aspects:aspect_group/hydrophobic/logic/update
# Update Moisture Dependant
execute if predicate aspects:aspect_group/is_moisture_dependant run function aspects:aspect_group/moisture_dependant/logic/update
