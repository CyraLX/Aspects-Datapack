# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["aspects_item_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
$item modify entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16] weapon.mainhand [{function:"minecraft:reference",name:"aspects:jigsaw_immune_dummy"},{function:"minecraft:set_components",components:{"minecraft:rarity":"epic","minecraft:item_model":"$(namespace):relic/faded/$(name)",enchantment_glint_override:0b}},{function:"minecraft:set_name",entity:"this",target:"item_name",name:[{translate:"item.$(namespace).faded_relic.$(name)",color:"#ff4e1d"}]},{function:"minecraft:set_lore",entity:"this",mode:"replace_all",lore:[{translate:"item.aspects.faded_relic.generic.fulfilled",with:[{translate:"aspect.$(namespace).$(name)",color:"$(color)"},{selector:"@s",color:"$(color)"}],color:"gray",italic:0b}]}]
$data modify storage aspectlib:dummy aspect set from storage aspects:registry aspect."$(namespace):$(name)"
data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect.namespace
data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect.name
execute store result storage aspectlib:dummy random_1 short 1 run random value 1..11 aspects:faded_relic
execute store result storage aspectlib:dummy random_2 short 1 run random value 1..4 aspects:faded_relic
execute as @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16] run function aspects:item/relic/faded/apply_random_lore with storage aspectlib:dummy
# Give the specified Relic
summon minecraft:item ~ ~ ~ {Tags: ["aspects_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=aspects_item, distance=..16] Item set from entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=aspects_item, distance=..16] remove aspects_item
kill @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16]

# Give advancement
advancement grant @s only aspects:gameplay/aspect/obtain_relic
