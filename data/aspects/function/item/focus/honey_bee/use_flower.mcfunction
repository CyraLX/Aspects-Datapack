function aspects:item/focus/honey_bee/store_effect
execute unless items entity @s weapon.offhand milk_bucket run item modify entity @s weapon.offhand aspectlib:consume/1
execute if items entity @s weapon.offhand milk_bucket run item replace entity @s weapon.offhand with bucket