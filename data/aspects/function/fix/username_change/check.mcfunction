# Make sure players username has an Aspect attached to it, if not get their aspect from the storage and fix it
execute unless predicate aspects:aspect/any_score if predicate aspects:aspect/any run function aspects:fix/username_change/reassign_aspect with entity @s equipment.body.components."minecraft:custom_data".aspects
