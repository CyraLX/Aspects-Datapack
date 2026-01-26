# Aspect specific PRE-DEACTIVATE logic
## Clear Night Vision
effect clear @s minecraft:night_vision
## Clear Attribute Changed

attribute @s minecraft:movement_speed modifier remove aspects:aspect/rascal/light_level
# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:registry aspect."aspects:rascal"

# Aspect specific POST-DEACTIVATE logic

