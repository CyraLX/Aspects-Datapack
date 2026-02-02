scoreboard players set .raycastLimit aspects.item.focus.rotten.raycast_limit 5
execute unless block ~ ~ ~ #aspectlib:no_collision run return run function aspects:item/focus/rotten/raycast/effects/up
execute if block ~ ~ ~ #aspectlib:no_collision run return run function aspects:item/focus/rotten/raycast/effects/down