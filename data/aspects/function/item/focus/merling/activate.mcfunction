advancement revoke @s from aspects:item/focus/merling/use

# Play activation sound
playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..16] ~ ~ ~ 1 2
# Highlight nearby wet Entities
execute as @e[type=!#aspectlib:non-living, tag=!smithed.strict, distance=0.1..48, predicate=aspectlib:flags/is_wet] at @s run function aspects:item/focus/merling/give_outline
