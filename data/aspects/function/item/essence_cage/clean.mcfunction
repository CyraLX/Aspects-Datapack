advancement revoke @s only aspects:item/essence_cleaner/use

execute unless predicate aspects:item/essence_cleaner/cleanable_items run return run playsound minecraft:entity.ender_eye.death player @s
item modify entity @s weapon.offhand aspects:essence_cage/empty/base
