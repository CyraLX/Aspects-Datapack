# Aspect specific PRE-GIVE_ASPECT logic

# Generic GIVE_ASPECT logic
function aspects:aspect/generic/give_aspect with storage aspects:aspect_list aspects:merling

# Aspect specific POST-GIVE_ASPECT logic
## Give Night Vision
function aspects:aspect/feline/give_night_vision
## Fill "Moisture" meter
scoreboard players set @s aspects.generic.moisture 180