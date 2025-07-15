# Aspect specific PRE-GIVE_ASPECT logic

# Generic GIVE_ASPECT logic
function aspects:aspect/generic/give_aspect with storage aspects:aspect_list aspects:honey_bee

# Aspect specific POST-GIVE_ASPECT logic
## Give unique Elytra if missing
execute unless items entity @s armor.chest minecraft:elytra[minecraft:enchantments={"aspects:aspect/honey_bee/wings": 1}] run return run function aspects:aspect/honey_bee/wings/equip
