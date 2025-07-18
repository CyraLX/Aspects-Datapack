# Make sure players username has an Aspect attached to it, if not get their aspect from the storage and fix it
execute unless data entity @s equipment.body.components."minecraft:custom_data".aspects run return fail
data modify storage aspectlib:dummy aspect_item set from entity @s equipment.body.components."minecraft:custom_data".aspects
data modify storage aspectlib:dummy id set from storage aspectlib:dummy aspect_item.player_id
data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect_item.aspect.namespace
data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect_item.aspect.name
data modify storage aspectlib:dummy aspect_id set from storage aspectlib:dummy aspect_item.aspect.id
execute unless predicate aspects:aspect/any_score run return run function aspects:data_fixer/username_change/reassign_aspect with storage aspectlib:dummy
execute unless predicate aspects:data_fixer/username_change/check_id_match run return run function aspects:data_fixer/username_change/reassign_aspect with storage aspectlib:dummy
