item modify entity @s armor.chest aspects:aspect/elytrian/wings/variant_8
item modify entity @s armor.chest aspects:aspect/elytrian/wings/apply_dyed_lore
item modify entity @s weapon.offhand aspectlib:consume/1

playsound minecraft:item.dye.use player @a[distance=..16] ~ ~ ~ 1 1
advancement grant @s only aspects:gameplay/aspect/elytrian/recolor_wings