advancement revoke @s only aspects:aspect/feline/speed_boost_when_hunting

# Activate the bossbar and enchantments if not active already
execute unless predicate aspects:aspect/feline/predator/is_active run function aspects:aspect/feline/predator/activate
# Reset score timer
scoreboard players set @s aspects.feline.predator 11