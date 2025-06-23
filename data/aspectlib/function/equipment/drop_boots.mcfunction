# Check if player has boots
execute unless predicate aspectlib:equipment/has_leggings run return fail
# Drop the Item in Feet Slot
summon minecraft:item ~ ~ ~ {Tags: ["aspectlib_removed_equipment"], Item:{id: "minecraft:stick", count: 1}}
data modify entity @n[type=minecraft:item, tag=aspectlib_removed_equipment, distance=..8] Item set from entity @s equipment.feet
tag @n[type=minecraft:item, tag=aspectlib_removed_equipment, distance=..8] remove aspectlib_removed_equipment
# Empty the Feet Slot
item replace entity @s armor.feet with air
