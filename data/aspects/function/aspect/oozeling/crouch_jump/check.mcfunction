# Check if should apply or revoke
execute unless predicate aspectlib:flags/is_sneaking run return run function aspects:aspect/oozeling/crouch_jump/revoke
execute if predicate aspectlib:flags/is_sneaking run function aspects:aspect/oozeling/crouch_jump/apply
