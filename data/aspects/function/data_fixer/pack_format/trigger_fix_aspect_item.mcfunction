execute if data entity @s equipment.body.components."minecraft:custom_data".aspects.aspect.namespace run return fail
execute unless data entity @s equipment.body.components."minecraft:custom_data".aspects.aspect run return fail
data modify storage aspectlib:dummy name set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
data modify storage aspectlib:dummy namespace set value "aspects"

function aspects:data_fixer/pack_format/fix_aspect_item with storage aspectlib:dummy