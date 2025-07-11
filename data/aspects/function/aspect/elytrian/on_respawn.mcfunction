# Check if its the correct Aspect
execute unless predicate aspects:aspect/elytrian/is_active run return fail
# Re-apply Aspect
function aspectlib:player_id/expose
function aspects:aspect/elytrian/give_aspect with storage aspectlib:dummy