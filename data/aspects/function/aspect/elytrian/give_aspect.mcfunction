# Give Aspect Item to Body Slot
execute if items entity @s armor.body * run item modify entity @s armor.body aspects:aspect/elytrian/set_base
execute unless items entity @s armor.body * run item replace entity @s armor.body with minecraft:jigsaw[minecraft:equippable={"slot":"body","equip_sound":"minecraft:entity.experience_orb.pickup"}]
execute unless items entity @s armor.body * run item modify entity @s armor.body aspects:aspect/elytrian/set
# Store the Player ID in the Aspect Item
$item modify entity @s armor.body {function:"minecraft:set_custom_data",tag:{aspects:{player_id:$(id)}}}
# Logic after Aspect Item is given
## Give unique Elytra if missing
execute unless items entity @s armor.chest minecraft:elytra[minecraft:enchantments={"aspects:aspect/elytrian/wings": 1}] run return run function aspects:aspect/elytrian/wings/equip
## Repair unique Elytra if present
item modify entity @s armor.chest aspects:aspect/elytrian/wings/repair