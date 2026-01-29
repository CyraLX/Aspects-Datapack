advancement revoke @s only aspects:item/focus/rotten/use

tag @s add aspects.rotten.focus_user
data remove storage aspectlib:dummy owner_UUID
data modify storage aspectlib:dummy owner_UUID set from entity @s UUID

# Make the attacker a summon target
execute on attacker if loaded ~ ~ ~ run tag @s add aspects.rotten.summon_target
# If attacker is not found, default to self
execute unless entity @n[tag=aspects.rotten.summon_target, distance=..16] run tag @s add aspects.rotten.summon_target

# Start summoning
execute as @n[tag=aspects.rotten.summon_target, distance=..16] at @s run function aspects:item/focus/rotten/used/prepare_summons

# Cleanup
tag @e[tag=aspects.rotten.summon_target, distance=..16] remove aspects.rotten.summon_target
tag @s remove aspects.rotten.focus_user
