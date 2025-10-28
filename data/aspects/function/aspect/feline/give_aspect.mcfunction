# Aspect specific PRE-GIVE_ASPECT logic

# Generic GIVE_ASPECT logic
function aspects:aspect/generic/give_aspect with storage aspects:registry aspect."aspects:feline"

# Aspect specific POST-GIVE_ASPECT logic
## Give Night Vision
function aspects:aspect/feline/give_night_vision
## Remove "On The Hunt"
execute if predicate aspects:aspect/feline/predator/is_active run function aspects:aspect/feline/predator/remove_enchantment
