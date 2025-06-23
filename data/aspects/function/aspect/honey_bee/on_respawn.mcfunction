# Check if its the correct Aspect
execute unless predicate aspects:aspect/honey_bee/is_active run return fail
# Re-apply Aspect
function aspects:aspect/honey_bee/give_aspect