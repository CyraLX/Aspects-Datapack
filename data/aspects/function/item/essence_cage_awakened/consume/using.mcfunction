advancement revoke @s only aspects:item/essence_cage_awakened/using_no_crouch

execute if score @s aspects.essence_cage_awakened.consume.use_timer matches 40.. run return run function aspects:item/essence_cage_awakened/consume/trigger
scoreboard players add @s aspects.essence_cage_awakened.consume.use_timer 1

playsound entity.generic.splash player @a[distance=..16] ~ ~ ~ 0.1 1
particle minecraft:falling_water ~ ~1 ~ 0.4 0.4 0.4 0 1