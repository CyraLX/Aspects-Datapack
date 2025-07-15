# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["faded_relic_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
$item modify entity @n[type=minecraft:armor_stand, tag=faded_relic_granter, distance=..4] weapon.mainhand $(namespace):relic/faded/$(name)
$data modify storage aspectlib:dummy aspect set from storage aspects:aspect_list $(namespace):$(name)
data modify storage aspectlib:dummy aspect_namespace set from storage aspectlib:dummy aspect.namespace
data modify storage aspectlib:dummy aspect_name set from storage aspectlib:dummy aspect.name
execute store result storage aspectlib:dummy random_1 short 1 run random value 1..11 aspects:faded_relic
execute store result storage aspectlib:dummy random_2 short 1 run random value 1..4 aspects:faded_relic
execute as @n[type=minecraft:armor_stand, tag=faded_relic_granter, distance=..4] run function aspects:relic/faded/apply_random_lore with storage aspectlib:dummy
# Give the specified Relic
summon minecraft:item ~ ~ ~ {Tags: ["faded_relic_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=faded_relic_item, distance=..4] Item set from entity @n[type=minecraft:armor_stand, tag=faded_relic_granter, distance=..4] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=faded_relic_item, distance=..4] remove faded_relic_item
kill @n[type=minecraft:armor_stand, tag=faded_relic_granter, distance=..4]

# Give advancement
advancement grant @s only aspects:gameplay/aspect/obtain_relic
