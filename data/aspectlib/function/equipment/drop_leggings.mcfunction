# Check if player has leggings
execute unless predicate aspectlib:equipment/has_leggings run return fail
# Drop the Item in Legs Slot
summon minecraft:item ~ ~ ~ {Tags: ["aspectlib_removed_equipment"], Item:{id: "minecraft:stick", count: 1}}
data modify entity @n[type=minecraft:item, tag=aspectlib_removed_equipment, distance=..8] Item set from entity @s equipment.legs
tag @n[type=minecraft:item, tag=aspectlib_removed_equipment, distance=..8] remove aspectlib_removed_equipment
# Empty the Legs Slot
item replace entity @s armor.legs with air
