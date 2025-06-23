# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["aspect_encyclopedia_1_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
item modify entity @n[type=minecraft:armor_stand, tag=aspect_encyclopedia_1_granter, distance=..1] weapon.mainhand aspects:aspect_encyclopedia/series_1
# Give the specified Aspect Encyclopedia
summon minecraft:item ~ ~ ~ {Tags: ["aspect_encyclopedia_1_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=aspect_encyclopedia_1_item, distance=..1] Item set from entity @n[type=minecraft:armor_stand, tag=aspect_encyclopedia_1_granter, distance=..1] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=aspect_encyclopedia_1_item, distance=..1] remove aspect_encyclopedia_1_item
kill @n[type=minecraft:armor_stand, tag=aspect_encyclopedia_1_granter, distance=..1]
