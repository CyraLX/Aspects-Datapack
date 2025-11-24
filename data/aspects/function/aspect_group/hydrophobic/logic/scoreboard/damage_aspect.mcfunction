# Damage Aspect
function aspects:aspect_group/hydrophobic/logic/damage_user
# Update bossbar state
execute unless predicate aspects:aspect_group/hydrophobic/state/depleted run function aspects:aspect_group/hydrophobic/logic/bossbar/state_depleted with storage aspectlib:dummy
