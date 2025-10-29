# Remove active Aspect
data modify storage aspectlib:dummy aspect set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
function aspects:aspect/generic/remove_old_aspect with storage aspectlib:dummy aspect

# Reset trigger requirements
advancement revoke @s only aspects:aspect/give_aspect_from_trigger
advancement revoke @s only aspectlib:event/on_first_join
