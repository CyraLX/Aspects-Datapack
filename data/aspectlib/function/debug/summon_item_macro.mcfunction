# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["aspects_item_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
$item modify entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16] weapon.mainhand $(item_modifier)
# Give the specified item
summon minecraft:item ~ ~ ~ {Tags: ["aspects_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=aspects_item, distance=..16] Item set from entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=aspects_item, distance=..16] remove aspects_item
kill @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16]
