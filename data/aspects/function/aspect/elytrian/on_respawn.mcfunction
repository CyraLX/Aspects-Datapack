# Check if its the correct Aspect
execute unless predicate aspects:aspect/elytrian/is_active run return fail
# Re-apply Aspect
function aspects:aspect/elytrian/give_aspect