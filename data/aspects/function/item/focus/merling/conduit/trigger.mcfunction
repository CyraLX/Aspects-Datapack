# Fail if a marker already exists
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @n[tag=aspects.merling.conduit,distance=..0.1] run return run playsound entity.ender_eye.death block @s ~ ~ ~

# Summon and setup marker
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:armor_stand run function aspects:item/focus/merling/conduit/set_marker_properties