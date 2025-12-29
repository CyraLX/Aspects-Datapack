scoreboard players set @s aspects.essence_cage_awakened.consume.use_timer 0
execute unless predicate aspects:item/essence_cage_awakened/is_in_mainhand run return run playsound minecraft:entity.ender_eye.death player @s
data modify storage aspectlib:dummy aspect set from entity @s SelectedItem.components."minecraft:custom_data".aspects.awakened_essence_cage.aspect
function aspects:item/essence_cage_awakened/consume/set_aspect with storage aspectlib:dummy aspect
item modify entity @s weapon.mainhand aspectlib:consume/1
