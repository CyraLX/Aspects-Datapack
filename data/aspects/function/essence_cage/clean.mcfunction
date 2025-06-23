advancement revoke @s only aspects:essence_cleaner/use

execute unless predicate aspects:essence_cage/is_held_any run return run playsound minecraft:entity.ender_eye.death player @s
execute if predicate aspects:essence_cage/is_in_offhand_any run return run item modify entity @s weapon.offhand aspects:essence_cage/empty/base
execute if predicate aspects:essence_cage/is_in_mainhand_any run return run item modify entity @s weapon.mainhand aspects:essence_cage/empty/base