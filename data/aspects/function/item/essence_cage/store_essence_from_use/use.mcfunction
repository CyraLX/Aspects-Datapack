advancement revoke @s only aspects:item/essence_extractor/use
execute unless predicate aspects:item/essence_cage/is_held run return run playsound entity.ender_eye.death player @s ~ ~ ~ 1 2
execute unless entity @n[distance=..5, predicate=aspects:item/essence_cage/entity/no_kill_required] run return fail
execute unless entity @e[distance=..5, predicate=aspects:item/essence_cage/entity/no_kill_required, predicate=!aspects:item/essence_cage/entity/essence_exhausted] as @e[distance=..5, predicate=aspects:item/essence_cage/entity/no_kill_required, predicate=aspects:item/essence_cage/entity/essence_exhausted] at @s run particle sculk_soul ~ ~1 ~ 0.4 0.4 0.4 0 25
execute unless entity @e[distance=..5, predicate=aspects:item/essence_cage/entity/no_kill_required, predicate=!aspects:item/essence_cage/entity/essence_exhausted] run return run playsound entity.ender_eye.death player @s
tag @s add aspects.essence_cage.extractor.use.origin
execute as @n[distance=..5,predicate=aspects:item/essence_cage/entity/no_kill_required, predicate=!aspects:item/essence_cage/entity/essence_exhausted] at @s run function aspects:item/essence_cage/store_essence_from_use/extract_essence
tag @s remove aspects.essence_cage.extractor.use.origin
