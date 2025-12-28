scoreboard players set @s aspects.essence_cage.clean.use_timer 0
execute unless predicate aspects:item/essence_cage/is_in_mainhand run return run playsound minecraft:entity.ender_eye.death player @s
item modify entity @s weapon.mainhand aspects:essence_cage/empty/base
playsound entity.generic.splash player @a[distance=..16] ~ ~ ~ 1 0.5
