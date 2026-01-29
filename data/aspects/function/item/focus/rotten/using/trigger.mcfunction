advancement revoke @s only aspects:item/focus/rotten/using

# Play summoning effects
## Make the attacker a summon target
execute on attacker if loaded ~ ~ ~ run tag @s add aspects.rotten.summon_target
## If attacker is not found, default to self
execute unless entity @n[tag=aspects.rotten.summon_target, distance=..32] run tag @s add aspects.rotten.summon_target
## Run
execute as @n[tag=aspects.rotten.summon_target, distance=..32] at @s run function aspects:item/focus/rotten/using/target

# Cleanup
tag @e[tag=aspects.rotten.summon_target, distance=..32] remove aspects.rotten.summon_target
