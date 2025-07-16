# Check if already applied
execute if predicate aspects:aspect/elytrian/fly_damage/is_active run return fail
# Apply if not applied yet
attribute @s minecraft:attack_damage modifier add aspects:elytrian/fly_damage/attack_damage 0.5 add_multiplied_total
attribute @s minecraft:attack_knockback modifier add aspects:elytrian/fly_damage/attack_knockback_base 0.5 add_value
attribute @s minecraft:attack_knockback modifier add aspects:elytrian/fly_damage/attack_knockback_multiplier 0.5 add_multiplied_total
# Set as active
scoreboard players set @s aspects.elytrian.fly_damage.is_active 1
