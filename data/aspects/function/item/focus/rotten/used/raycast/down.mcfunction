# If reached the recursion limit, end recursion and start summoning
execute if score #aspects aspectlib.temp matches ..0 positioned ~ ~1 ~ run return run function aspects:item/focus/rotten/used/summon/run
# If inside a solid block, end recursion and start summoning
execute unless block ~ ~ ~ #aspectlib:no_collision positioned ~ ~1 ~ run return run function aspects:item/focus/rotten/used/summon/run

# Otherwise, continue recursion 
scoreboard players remove #aspects aspectlib.temp 1
execute positioned ~ ~-1 ~ run return run function aspects:item/focus/rotten/used/raycast/down
