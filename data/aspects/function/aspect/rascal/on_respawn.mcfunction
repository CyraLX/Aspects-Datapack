# Check if its the correct Aspect
execute unless predicate aspects:aspect/rascal/is_active run return fail
# Re-apply Aspect
function aspects:aspect/rascal/give_aspect