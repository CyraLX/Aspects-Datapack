# Undead Horde
## Have a summon kill an entity
execute on attacker at @s run function aspects:aspect/rotten/advancement/undead_horde/prepare
# Mass Hysteria
## Have a summon kill another rotten summon
execute if predicate aspects:aspect/rotten/is_summon on attacker at @s run function aspects:aspect/rotten/advancement/mass_hysteria/prepare
