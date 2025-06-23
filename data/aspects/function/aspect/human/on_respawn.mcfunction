# Check if its the correct Aspect
execute unless predicate aspects:aspect/human/is_active run return fail
# Re-apply Aspect
function aspects:aspect/human/give_aspect