# Reset use timer
scoreboard players set @s aspects.essence_extractor.use_timer 0

# Return early if Essence Cage is not in Offhand
execute unless predicate aspects:item/essence_cage/is_in_offhand run return run function aspects:item/essence_extractor/effects/no_using_target
# Return early if no kill entity available
execute unless entity @n[distance=..8, predicate=aspects:item/essence_cage/entity/no_kill_required] run return fail

# Visualize entities with exhausted essence if none is present to extract from
execute unless entity @e[distance=..8, predicate=aspects:item/essence_cage/entity/no_kill_required, predicate=!aspects:item/essence_extractor/is_exhausted] run execute as @e[distance=..8, predicate=aspects:item/essence_cage/entity/no_kill_required, predicate=aspects:item/essence_extractor/is_exhausted] at @s run function aspects:item/essence_extractor/effects/extracting_failure_no_essence

# Tag self
function aspects:item/essence_extractor/tag/apply_self

# Start extracting essence
execute as @n[distance=..8,predicate=aspects:item/essence_cage/entity/no_kill_required, predicate=!aspects:item/essence_extractor/is_exhausted] at @s run function aspects:item/essence_extractor/extract_by_using
