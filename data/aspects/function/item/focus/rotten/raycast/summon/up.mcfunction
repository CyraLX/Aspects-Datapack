# Finish Raycast if distance limit is reached
execute if score .raycastLimit aspects.item.focus.rotten.raycast_limit matches ..0 run return run function aspects:item/focus/rotten/used/summon

# Finish Raycast if empty spot found
execute if block ~ ~ ~ #aspectlib:no_collision run return run function aspects:item/focus/rotten/used/summon

# Recurse Raycast 
scoreboard players remove .raycastLimit aspects.item.focus.rotten.raycast_limit 1
execute unless block ~ ~ ~ #aspectlib:no_collision positioned ~ ~0.25 ~ run return run function aspects:item/focus/rotten/raycast/summon/up
