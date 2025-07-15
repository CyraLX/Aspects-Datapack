# Check if its the correct Aspect
execute unless predicate aspects:aspect/merling/is_active run return fail
# Re-apply Aspect
function aspects:aspect/merling/give_aspect
