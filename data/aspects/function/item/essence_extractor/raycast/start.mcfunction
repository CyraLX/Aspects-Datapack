tag @s add raycaster
playsound particle.soul_escape player @a[distance=..16] ~ ~ ~ 1 0.5
scoreboard players set .raycastLimit aspects.essence_extractor.raycast 1000
execute anchored eyes facing entity @p[tag=essence_extractor_attacker, distance=..32] eyes positioned ^ ^ ^.1 run function aspects:item/essence_extractor/raycast/raycast
tag @s remove raycaster