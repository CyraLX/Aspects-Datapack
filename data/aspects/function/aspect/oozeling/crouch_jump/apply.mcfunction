# Check if already applied
execute if predicate aspects:aspect/oozeling/crouch_jump/is_active run return fail
# Apply if not applied yet
attribute @s minecraft:jump_strength modifier add aspects:oozeling/crouch_jump/jump_strength 0.4 add_multiplied_total
# Set as active
scoreboard players set @s aspects.oozeling.crouch_jump.is_active 1
