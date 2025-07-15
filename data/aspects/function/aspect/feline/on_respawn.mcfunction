# Check if its the correct Aspect
execute unless predicate aspects:aspect/feline/is_active run return fail
# Re-apply Aspect
function aspects:aspect/feline/give_aspect
