execute if entity @s[tag=aspects.rotten.summon_recent] run return run tag @s remove aspects.rotten.summon_recent
execute if predicate aspectlib:periodic_tick/2400 run kill @s
