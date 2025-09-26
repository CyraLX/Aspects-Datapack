# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["aspects_item_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
$item modify entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..4] weapon.mainhand [{function:"minecraft:reference",name:"aspects:jigsaw_immune_dummy"},{function:"minecraft:set_components",components:{"minecraft:rarity":"rare","minecraft:item_model":"$(namespace):relic/shattered/$(name)",enchantment_glint_override:0b,"minecraft:max_stack_size":16}},{function:"minecraft:set_name",entity:"this",target:"item_name",name:[{translate:"item.$(namespace).shattered_relic.$(name)"}]},{function:"minecraft:set_lore",entity:"this",mode:"replace_all",lore:[{translate:"item.aspects.shattered_relic.generic.broken",with:[{translate:"aspect.$(namespace).$(name)",color:"$(color)"},{selector:"@s",color:"$(color)"}],color:"gray",italic:0b}]}]
$data modify storage aspectlib:dummy aspect set from storage aspects:aspect_list $(namespace):$(name)
data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect.namespace
data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect.name
execute on attacker run item modify entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..4] weapon.mainhand {function:"minecraft:set_lore",entity:"this",mode:"append",lore:[{translate:"item.aspects.shattered_relic.generic.killer",with:[{selector:"@s",color:"red"}],color:"gray",italic:0b}]}
execute store result storage aspectlib:dummy random_1 short 1 run random value 1..11 aspects:shattered_relic
execute store result storage aspectlib:dummy random_2 short 1 run random value 1..4 aspects:shattered_relic
execute as @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..4] run function aspects:item/relic/shattered/apply_random_lore with storage aspectlib:dummy
# Give the specified Shattered Aspect
summon minecraft:item ~ ~ ~ {Tags: ["aspects_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=aspects_item, distance=..4] Item set from entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..4] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=aspects_item, distance=..4] remove aspects_item
kill @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..4]
