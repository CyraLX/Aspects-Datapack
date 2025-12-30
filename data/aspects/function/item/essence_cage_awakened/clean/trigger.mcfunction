scoreboard players set @s aspects.essence_cage_awakened.clean.use_timer 0
execute unless predicate aspects:item/essence_cage_awakened/is_in_mainhand run return run playsound minecraft:entity.ender_eye.death player @s

item modify entity @s weapon.mainhand aspects:essence_cage/empty/base

playsound minecraft:item.bucket.fill player @a[distance=..16] ~ ~ ~ 1 0.5
