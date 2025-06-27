scoreboard players enable @s aspects.choose_aspect
scoreboard players set @s aspects.choose_aspect -1
advancement revoke @s only aspects:aspect/give_aspect_from_trigger
scoreboard players set @s aspects.dialog.choose_menu 1
dialog show @s aspects:menu/choose_aspect
return 1