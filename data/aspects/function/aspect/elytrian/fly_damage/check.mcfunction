# Check if should apply or revoke
execute unless predicate aspectlib:flags/is_flying run return run function aspects:aspect/elytrian/fly_damage/revoke
execute if predicate aspectlib:flags/is_flying run function aspects:aspect/elytrian/fly_damage/apply
