# If is survival...
execute unless predicate aspectlib:gamemode/survival_or_adventure run return fail

# Every 1/4 second update Advanced Health Tracker
execute if predicate aspectlib:periodic_tick/05 if predicate aspects:aspect_group/is_track_hp run function aspects:aspect_group/track_hp/logic/update

# Every second...
execute unless predicate aspectlib:periodic_tick/20 run return fail

# Update Hydrophobic
execute if predicate aspects:aspect_group/is_hydrophobic run function aspects:aspect_group/hydrophobic/logic/update
# Update Moisture Dependant
execute if predicate aspects:aspect_group/is_moisture_dependant run function aspects:aspect_group/moisture_dependant/logic/update
