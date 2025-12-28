advancement revoke @s only aspects:item/essence_cage/using_no_crouch

execute if score @s aspects.essence_cage.whitelist.use_timer matches 60.. run return run function aspects:item/essence_cage/whitelist/open_dialog_page_1
scoreboard players add @s aspects.essence_cage.whitelist.use_timer 1

playsound entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 0.2 1
particle minecraft:witch ~ ~1 ~ 0.4 0.4 0.4 0 1