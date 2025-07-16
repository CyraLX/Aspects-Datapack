# Make sure players username has an Aspect attached to it, if not get their aspect from the storage and fix it
data modify storage aspectlib:dummy aspect_item set from entity @s equipment.body.components."minecraft:custom_data".aspects
data modify storage aspectlib:dummy id set from storage aspectlib:dummy aspect_item.player_id
data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect_item.aspect.namespace
data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect_item.aspect.name
execute unless predicate aspects:aspect/any_score if predicate aspects:aspect/any run function aspects:data_fixer/username_change/reassign_aspect with storage aspectlib:dummy
