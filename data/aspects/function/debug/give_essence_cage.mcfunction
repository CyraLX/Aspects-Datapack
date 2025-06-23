# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["essence_cage_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
item modify entity @n[type=minecraft:armor_stand, tag=essence_cage_granter, distance=..1] weapon.mainhand aspects:essence_cage/empty/first_join_cage
# Give the specified Shattered Aspect
summon minecraft:item ~ ~ ~ {Tags: ["essence_cage_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=essence_cage_item, distance=..1] Item set from entity @n[type=minecraft:armor_stand, tag=essence_cage_granter, distance=..1] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=essence_cage_item, distance=..1] remove essence_cage_item
kill @n[type=minecraft:armor_stand, tag=essence_cage_granter, distance=..1]