# Revoke the trigger advancement if this function is called through that
execute if entity @s[advancements={aspects:aspect_encyclopedia/summon_aspect_picker=true}] run advancement revoke @s only aspects:aspect_encyclopedia/summon_aspect_picker

# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["aspect_picker_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
item modify entity @n[type=minecraft:armor_stand, tag=aspect_picker_granter, distance=..4] weapon.mainhand aspects:aspect_picker
# Give the specified Aspect Picker
summon minecraft:item ~ ~ ~ {Tags: ["aspect_picker_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=aspect_picker_item, distance=..4] Item set from entity @n[type=minecraft:armor_stand, tag=aspect_picker_granter, distance=..4] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=aspect_picker_item, distance=..4] remove aspect_picker_item
kill @n[type=minecraft:armor_stand, tag=aspect_picker_granter, distance=..4]