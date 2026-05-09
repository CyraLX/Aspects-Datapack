data modify storage aspectlib:cache temp.aspect set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
execute as @p[tag=aspects.evergrowing_blade.attacker,distance=..32] at @s run function aspects:item/essence_cage/awaken with storage aspectlib:cache temp.aspect

# Cleanup Tags
function aspects:item/evergrowing_blade/tag/remove_all
