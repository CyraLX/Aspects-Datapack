execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @n[tag=aspects.merling.conduit,distance=..0.1] run return run playsound entity.ender_eye.death block @s ~ ~ ~
execute align xyz positioned ~0.5 ~0.5 ~0.5 run kill @n[tag=aspects.merling.conduit,distance=..0.1] 
playsound block.conduit.deactivate block @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:trial_spawner_detection ~ ~ ~ 0.2 0.2 0.2 0 20

