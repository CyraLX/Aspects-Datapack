advancement revoke @s only aspects:item/essence_extractor/using

execute if score @s aspects.essence_extractor.use_timer matches 20.. run return run function aspects:item/essence_extractor/use
scoreboard players add @s aspects.essence_extractor.use_timer 1

playsound particle.soul_escape player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0 1