# Remove one from the raycast limit
scoreboard players remove .raycastLimit aspects.essence_extractor.raycast 1

# Optional: display a particle
particle minecraft:soul ~ ~ ~ 0.05 0.05 0.05 0 1 force

# Check if the raycast has hit an entity's hitbox
execute positioned ~-.99 ~-.99 ~-.99 as @p[dx=0,tag=!raycaster] positioned ~.99 ~.99 ~.99 as @s[dx=0] run return fail
execute if score .raycastLimit aspects.essence_extractor.raycast matches 1.. positioned ^ ^ ^0.1 run function aspects:item/essence_extractor/raycast/raycast
