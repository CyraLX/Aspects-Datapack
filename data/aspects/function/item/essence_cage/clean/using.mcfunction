advancement revoke @s only aspects:item/essence_cage/using_crouch

execute if score @s aspects.essence_cage.clean.use_timer matches 200.. run return run function aspects:item/essence_cage/clean/trigger
scoreboard players add @s aspects.essence_cage.clean.use_timer 1

execute if score @s aspects.essence_cage.clean.use_timer matches 20.. if predicate aspectlib:periodic_tick/05 run function aspects:item/essence_cage/clean/effects
