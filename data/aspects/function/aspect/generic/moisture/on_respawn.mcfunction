# Return early if isn't Moisture Dependant
execute unless predicate aspects:aspect_group/is_moisture_dependant run return fail

# If is Hydrophobic, refill "Moisture" meter
function aspects:aspect/generic/moisture/scoreboard/fill
