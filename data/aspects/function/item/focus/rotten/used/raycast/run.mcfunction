# Set a recursion limit
scoreboard players set #aspects aspectlib.dummy 5
# If not inside a solid block, raycast downwards
execute if block ~ ~ ~ #aspectlib:no_collision run return run function aspects:item/focus/rotten/used/raycast/down
# If inside a solid block, raycast upwards
execute unless block ~ ~ ~ #aspectlib:no_collision run return run function aspects:item/focus/rotten/used/raycast/up
