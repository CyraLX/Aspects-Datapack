advancement revoke @s from aspects:focus/merling/use

# Play activation sound
playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..16] ~ ~ ~ 1 2
# Highlight nearby wet Entities
execute as @e[distance=0.1..48, predicate=aspectlib:origin_exposed_to_water] at @s run function aspects:focus/merling/give_outline
