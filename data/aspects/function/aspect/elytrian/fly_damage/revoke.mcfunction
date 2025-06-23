# Check if already revoked
execute unless predicate aspects:aspect/elytrian/fly_damage/is_active run return fail
# Revoke if not revoked yet
attribute @s minecraft:attack_damage modifier remove aspects:elytrian/fly_damage/attack_damage
attribute @s minecraft:attack_knockback modifier remove aspects:elytrian/fly_damage/attack_knockback_base
attribute @s minecraft:attack_knockback modifier remove aspects:elytrian/fly_damage/attack_knockback_multiplier
# Set as not active
scoreboard players set @s aspects.elytrian.fly_damage.is_active 0
