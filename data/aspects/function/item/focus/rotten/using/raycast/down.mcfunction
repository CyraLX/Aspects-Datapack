# If reached the recursion limit, end recursion and start effect
execute if score #aspects aspectlib.dummy matches ..0 run return run function aspects:item/focus/rotten/using/effects/run
# If inside a solid block, end recursion and start effects
execute unless block ~ ~ ~ #aspectlib:no_collision positioned ~ ~1 ~ run return run function aspects:item/focus/rotten/using/effects/run

# Otherwise, continue recursion 
scoreboard players remove #aspects aspectlib.dummy 1
execute positioned ~ ~-1 ~ run return run function aspects:item/focus/rotten/using/raycast/down
