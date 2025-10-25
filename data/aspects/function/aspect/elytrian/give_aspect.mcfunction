# Aspect specific PRE-GIVE_ASPECT logic

# Generic GIVE_ASPECT logic
function aspects:aspect/generic/give_aspect with storage aspects:registry aspect.aspects:elytrian

# Aspect specific POST-GIVE_ASPECT logic
## Give unique Elytra if missing
execute unless items entity @s armor.chest minecraft:elytra[minecraft:enchantments={"aspects:aspect/elytrian/wings": 1}] run return run function aspects:aspect/elytrian/wings/equip
## Repair unique Elytra if present
item modify entity @s armor.chest aspects:aspect/elytrian/wings/repair
