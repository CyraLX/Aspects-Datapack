# Check if already revoked
execute unless predicate aspects:aspect/oozeling/crouch_jump/is_active run return fail
# Revoke if not revoked yet
attribute @s minecraft:jump_strength modifier remove aspects:oozeling/crouch_jump/jump_strength
# Set as not active
scoreboard players set @s aspects.oozeling.crouch_jump.is_active 0
