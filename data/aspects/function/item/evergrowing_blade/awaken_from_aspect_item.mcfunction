data modify storage aspectlib:dummy aspect set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
execute as @p[tag=evergrowing_blade_attacker,distance=..32] at @s run function aspects:item/essence_cage/awaken with storage aspectlib:dummy aspect

# Cleanup Tags
function aspects:item/evergrowing_blade/tag/remove_all
