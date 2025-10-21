# Return early if not Hydrophobic
execute unless predicate aspects:aspect_group/is_hydrophobic run return fail

# If is Hydrophobic, refill "Hydrophobia" meter 
function aspects:aspect/generic/hydrophobia/scoreboard/fill
