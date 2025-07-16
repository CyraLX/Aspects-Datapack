# Check if player has helmet
execute unless predicate aspectlib:equipment/has_helmet run return fail
# Drop the Item in Head Slot
summon minecraft:item ~ ~ ~ {Tags: ["aspectlib_removed_equipment"], Item:{id: "minecraft:stick", count: 1}}
data modify entity @n[type=minecraft:item, tag=aspectlib_removed_equipment, distance=..8] Item set from entity @s equipment.head
tag @n[type=minecraft:item, tag=aspectlib_removed_equipment, distance=..8] remove aspectlib_removed_equipment
# Empty the Head Slot
item replace entity @s armor.head with air
