# Check if its the correct Aspect
execute unless predicate aspects:aspect/shulk/is_active run return fail
# Re-apply Aspect
function aspects:aspect/shulk/give_aspect