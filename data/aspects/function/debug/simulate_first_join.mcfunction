# Remove active Aspect
data modify storage aspectlib:cache temp.aspect set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
function aspects:aspect/generic/remove_old_aspect with storage aspectlib:cache temp.aspect

# Reset advancements
advancement revoke @s from aspectlib:root
advancement revoke @s from aspects:gameplay/root

# Remove Storage Data
function aspectlib:expose/player/id
function aspectlib:storage_data/delete with storage aspectlib:cache temp
