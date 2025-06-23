# Give Aspect Item to Body Slot
item replace entity @s armor.body with minecraft:jigsaw[minecraft:equippable={"slot":"body","equip_sound":"minecraft:entity.experience_orb.pickup"}]
item modify entity @s armor.body aspects:aspect/elytrian/set
# Logic after Aspect Item is given
## Give unique Elytra if missing
execute unless items entity @s armor.chest minecraft:elytra[minecraft:enchantments={"aspects:aspect/elytrian/wings": 1}] run return run function aspects:aspect/elytrian/wings/equip
## Repair unique Elytra if present
item modify entity @s armor.chest aspects:aspect/elytrian/wings/repair