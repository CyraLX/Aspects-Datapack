# Undead Horde
## Have a summon kill an entity
execute on attacker at @s run function aspects:aspect/rotten/advancement/undead_horde/prepare
# Betrayal
## Have a summon kill a summon-like entity
execute if entity @s[type=#aspects:aspect/rotten/summons] unless predicate aspects:aspect/rotten/is_summon on attacker at @s run function aspects:aspect/rotten/advancement/betrayal/prepare
# Mass Hysteria
## Have a summon kill another rotten summon
execute if predicate aspects:aspect/rotten/is_summon on attacker at @s run function aspects:aspect/rotten/advancement/mass_hysteria/prepare
