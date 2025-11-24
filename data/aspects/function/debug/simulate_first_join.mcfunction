# Remove active Aspect
data modify storage aspectlib:dummy aspect set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
function aspects:aspect/generic/remove_old_aspect with storage aspectlib:dummy aspect

# Reset advancements
advancement revoke @s from aspectlib:root
advancement revoke @s from aspects:gameplay/root

# Remove Storage Data
function aspectlib:player/id/expose
function aspectlib:storage_data/delete with storage aspectlib:dummy
