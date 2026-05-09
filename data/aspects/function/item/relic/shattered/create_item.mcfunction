# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["aspects_item_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
$item modify entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16] weapon.mainhand [{function:"minecraft:reference",name:"aspects:jigsaw_immune_dummy"},{function:"minecraft:set_components",components:{"minecraft:rarity":"rare","minecraft:item_model":"$(namespace):relic/shattered/$(name)",enchantment_glint_override:0b,"minecraft:max_stack_size":16}},{function:"minecraft:set_name",entity:"this",target:"item_name",name:[{translate:"item.$(namespace).shattered_relic.$(name)"}]},{function:"minecraft:set_lore",entity:"this",mode:"replace_all",lore:[{translate:"item.aspects.shattered_relic.generic.broken",with:[{translate:"aspect.$(namespace).$(name)",color:"$(color)",shadow_color:$(shadow_color)},{selector:"@s",color:"$(color)",shadow_color:$(shadow_color)}],color:"gray",italic:0b}]}]
$data modify storage aspectlib:cache temp.aspect set from storage aspectlib:registry aspect[{namespace: $(namespace), name: $(name)}]
data modify storage aspectlib:cache temp.aspect_namespace set from storage aspectlib:cache temp.aspect.namespace
data modify storage aspectlib:cache temp.aspect_name set from storage aspectlib:cache temp.aspect.name
execute on attacker run item modify entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16] weapon.mainhand {function:"minecraft:set_lore",entity:"this",mode:"append",lore:[{translate:"item.aspects.shattered_relic.generic.killer",with:[{selector:"@s",color:"red"}],color:"gray",italic:0b}]}
execute store result storage aspectlib:cache temp.random_1 short 1 run random value 1..11 aspects:item/relic/shattered
execute store result storage aspectlib:cache temp.random_2 short 1 run random value 1..4 aspects:item/relic/shattered
execute as @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16] run function aspects:item/relic/shattered/apply_random_lore with storage aspectlib:cache temp
# Give the specified Shattered Aspect
summon minecraft:item ~ ~ ~ {Tags: ["aspects_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=aspects_item, distance=..16] Item set from entity @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=aspects_item, distance=..16] remove aspects_item
kill @n[type=minecraft:armor_stand, tag=aspects_item_granter, distance=..16]
