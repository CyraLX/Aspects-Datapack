# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["relic_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
$item modify entity @n[type=minecraft:armor_stand, tag=relic_granter, distance=..4] weapon.mainhand aspects:relic/faded/$(aspect)
$data modify storage aspectlib:dummy aspect set value $(aspect)
execute store result storage aspectlib:dummy random_1 short 1 run random value 1..11 aspects:faded_relic
execute store result storage aspectlib:dummy random_2 short 1 run random value 1..4 aspects:faded_relic
execute as @n[type=minecraft:armor_stand, tag=relic_granter, distance=..4] run function aspects:relic/faded/apply_random_lore with storage aspectlib:dummy
# Give the specified Relic
summon minecraft:item ~ ~ ~ {Tags: ["relic_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=relic_item, distance=..4] Item set from entity @n[type=minecraft:armor_stand, tag=relic_granter, distance=..4] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=relic_item, distance=..4] remove relic_item
kill @n[type=minecraft:armor_stand, tag=relic_granter, distance=..4]

# Give advancement
advancement grant @s only aspects:gameplay/aspect/obtain_relic
