data merge entity @s {Invisible:true,NoGravity:true,Small:true,Invulnerable:true}
attribute @s minecraft:scale base set 0.1
item replace entity @s armor.chest with minecraft:jigsaw[enchantments={"aspects:aspect/merling/conduit":1},equippable={slot:chest}]
tag @s add aspects.merling.conduit
playsound block.conduit.activate block @a[distance=..16] ~ ~ ~ 1 2
particle trial_spawner_detection_ominous ~ ~ ~ 0.2 0.2 0.2 0 20