# Check if its the correct Aspect
execute unless predicate aspects:aspect/infernal/is_active run return fail
# Re-apply Aspect
function aspects:aspect/infernal/give_aspect
