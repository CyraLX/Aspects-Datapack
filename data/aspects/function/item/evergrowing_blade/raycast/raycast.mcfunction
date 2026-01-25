# Remove one from the raycast limit
scoreboard players remove .raycastLimit aspects.evergrowing_blade.raycast 1

# Optional: display a particle
particle minecraft:soul ~ ~ ~ 0.05 0.05 0.05 0 1 force

# Check if the raycast has hit an entity's hitbox
execute positioned ~-.99 ~-.99 ~-.99 as @p[dx=0,tag=!raycaster] positioned ~.99 ~.99 ~.99 as @s[dx=0] run return fail
execute if score .raycastLimit aspects.evergrowing_blade.raycast matches 1.. positioned ^ ^ ^0.1 run function aspects:item/evergrowing_blade/raycast/raycast
