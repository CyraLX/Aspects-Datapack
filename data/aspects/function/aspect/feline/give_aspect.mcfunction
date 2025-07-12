# Give Aspect Item to Body Slot
execute if items entity @s armor.body * run item modify entity @s armor.body aspects:aspect/feline/set_base
execute unless items entity @s armor.body * run item replace entity @s armor.body with minecraft:jigsaw[minecraft:equippable={"slot":"body","equip_sound":"minecraft:entity.experience_orb.pickup"}]
execute if items entity @s armor.body minecraft:jigsaw[minecraft:equippable={"slot":"body","equip_sound":"minecraft:entity.experience_orb.pickup"}] run item modify entity @s armor.body aspects:aspect/feline/set
# Store the Player ID in the Aspect Item
function aspectlib:player_id/expose
function aspects:aspect/generic/store_id_on_aspect with storage aspectlib:dummy
# Give Night Vision
function aspects:aspect/feline/give_night_vision