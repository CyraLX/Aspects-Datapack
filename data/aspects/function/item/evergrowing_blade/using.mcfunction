advancement revoke @s only aspects:item/evergrowing_blade/using

execute if score @s aspects.evergrowing_blade.use_timer matches 20.. run return run function aspects:item/evergrowing_blade/use
scoreboard players add @s aspects.evergrowing_blade.use_timer 1

playsound particle.soul_escape player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0 1
