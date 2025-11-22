# Damage Aspect
function aspects:aspect/generic/hydrophobia/damage_user
# Update bossbar state
execute unless predicate aspects:generic/hydrophobic/state/depleted run function aspects:aspect/generic/hydrophobia/bossbar/state_depleted with storage aspectlib:dummy
