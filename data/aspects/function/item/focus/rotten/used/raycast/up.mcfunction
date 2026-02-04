# If reached the recursion limit, end recursion and start summoning
execute if score #aspects aspectlib.dummy matches ..0 positioned ~ ~-1 ~ run return run function aspects:item/focus/rotten/used/summon/run
# If not inside a solid block, end recursion and start summoning
execute if block ~ ~ ~ #aspectlib:no_collision run return run function aspects:item/focus/rotten/used/summon/run

# Otherwise, continue recursion 
scoreboard players remove #aspects aspectlib.dummy 1
execute positioned ~ ~1 ~ run return run function aspects:item/focus/rotten/used/raycast/up
