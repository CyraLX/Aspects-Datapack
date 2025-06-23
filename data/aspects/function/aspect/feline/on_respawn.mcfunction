# Check if its the correct Aspect
execute unless predicate aspects:aspect/feline/is_active run return fail
# Re-apply Aspect
function aspects:aspect/feline/give_aspect
# Logic after Aspect is Re-applied
## Remove "On The Hunt"
execute if predicate aspects:aspect/feline/predator/is_active run function aspects:aspect/feline/predator/remove_enchantment