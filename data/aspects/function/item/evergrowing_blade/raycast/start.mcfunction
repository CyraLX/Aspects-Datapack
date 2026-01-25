tag @s add raycaster
playsound particle.soul_escape player @a[distance=..16] ~ ~ ~ 1 0.5
scoreboard players set .raycastLimit aspects.evergrowing_blade.raycast 1000
execute anchored eyes facing entity @p[tag=evergrowing_blade_attacker, distance=..32] eyes positioned ^ ^ ^.1 run function aspects:item/evergrowing_blade/raycast/raycast
tag @s remove raycaster