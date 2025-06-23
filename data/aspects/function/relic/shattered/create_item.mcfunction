# Summon a temporary armor stand to hold the item
summon minecraft:armor_stand ~ ~ ~ {Tags: ["shattered_aspect_granter"], Invisible: true, NoGravity: true, equipment: {mainhand: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}}
$item modify entity @n[type=minecraft:armor_stand, tag=shattered_aspect_granter, distance=..4] weapon.mainhand aspects:relic/shattered/$(aspect)
execute on attacker run item modify entity @n[type=minecraft:armor_stand, tag=shattered_aspect_granter, distance=..4] weapon.mainhand aspects:relic/shattered/addon/killer_lore
execute store result storage aspectlib:dummy random_1 short 1 run random value 1..11 aspects:shattered_relic
execute store result storage aspectlib:dummy random_2 short 1 run random value 1..4 aspects:shattered_relic
execute as @n[type=minecraft:armor_stand, tag=shattered_aspect_granter, distance=..4] run function aspects:relic/shattered/apply_random_lore with storage aspectlib:dummy
# Give the specified Shattered Aspect
summon minecraft:item ~ ~ ~ {Tags: ["shattered_aspect_item"],Item: {id: "minecraft:stick",components:{item_model:"minecraft:air"}}}
data modify entity @n[type=minecraft:item, tag=shattered_aspect_item, distance=..4] Item set from entity @n[type=minecraft:armor_stand, tag=shattered_aspect_granter, distance=..4] equipment.mainhand
# Clean up
tag @n[type=minecraft:item, tag=shattered_aspect_item, distance=..4] remove shattered_aspect_item
kill @n[type=minecraft:armor_stand, tag=shattered_aspect_granter, distance=..4]
