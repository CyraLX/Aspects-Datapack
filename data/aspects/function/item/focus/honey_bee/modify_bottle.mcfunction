execute unless items entity @s weapon.offhand honey_bottle run effect give @s minecraft:hunger 1 255
execute if predicate aspects:item/focus/honey_bee/has_no_food run damage @s 2 starve
# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["suspicious_honey_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
$execute unless predicate aspectlib:input/sneak run function aspects:item/focus/honey_bee/apply_default with storage aspectlib:player_$(id) aspects.aspect_data."aspects:honey_bee"
$execute if predicate aspectlib:input/sneak unless predicate aspects:item/focus/honey_bee/has_suspicious_honey_offhand run function aspects:item/focus/honey_bee/apply_spiked with storage aspectlib:player_$(id) aspects.aspect_data."aspects:honey_bee"
$execute if predicate aspectlib:input/sneak if predicate aspects:item/focus/honey_bee/has_suspicious_honey_offhand run function aspects:item/focus/honey_bee/apply_spiked_fake with storage aspectlib:player_$(id) aspects.aspect_data."aspects:honey_bee"
# Give the Suspicious Honey
summon minecraft:item ~ ~ ~ {Tags: ["suspicious_honey_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=suspicious_honey_item, distance=..1] Item set from entity @n[type=minecraft:armor_stand, tag=suspicious_honey_granter, distance=..1] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=suspicious_honey_item, distance=..1] remove suspicious_honey_item
kill @n[type=minecraft:armor_stand, tag=suspicious_honey_granter, distance=..1]
