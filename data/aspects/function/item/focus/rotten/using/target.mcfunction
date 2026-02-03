# Every 4 ticks...
execute unless predicate aspectlib:periodic_tick/04 run return fail

# Attempt to raycast effects onto a solid block
execute positioned ~2 ~ ~2 align xyz positioned ~.5 ~ ~.5 run function aspects:item/focus/rotten/using/raycast/run
execute positioned ~2 ~ ~-2 align xyz positioned ~.5 ~ ~.5 run function aspects:item/focus/rotten/using/raycast/run
execute positioned ~-2 ~ ~2 align xyz positioned ~.5 ~ ~.5 run function aspects:item/focus/rotten/using/raycast/run
execute positioned ~-2 ~ ~-2 align xyz positioned ~.5 ~ ~.5 run function aspects:item/focus/rotten/using/raycast/run
