advancement revoke @s only aspects:item/essence_cage/using_no_crouch

execute if score @s aspects.essence_cage.whitelist.use_timer matches 60.. run return run function aspects:item/essence_cage/whitelist/dialog/page_1/open
scoreboard players add @s aspects.essence_cage.whitelist.use_timer 1

execute if score @s aspects.essence_cage.whitelist.use_timer matches 20.. if predicate aspectlib:periodic_tick/04 run function aspects:item/essence_cage/whitelist/effects
