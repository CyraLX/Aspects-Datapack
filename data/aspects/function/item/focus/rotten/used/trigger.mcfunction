advancement revoke @s only aspects:item/focus/rotten/use

tag @s add aspects.rotten.focus_user

# Store owner data
data remove storage aspectlib:dummy id
data remove storage aspectlib:dummy uuid
function aspectlib:player/id/expose
function aspectlib:player/uuid/expose

# Make the attacker a summon target
execute on attacker if loaded ~ ~ ~ run tag @s add aspects.rotten.summon_target
# If attacker is not found, default to self
execute unless entity @n[tag=aspects.rotten.summon_target, distance=..16] run tag @s add aspects.rotten.summon_target

# Start summoning
execute as @n[tag=aspects.rotten.summon_target, distance=..16] at @s run function aspects:item/focus/rotten/used/prepare_summons

# Cleanup
tag @e[tag=aspects.rotten.summon_target, distance=..16] remove aspects.rotten.summon_target
tag @s remove aspects.rotten.focus_user
