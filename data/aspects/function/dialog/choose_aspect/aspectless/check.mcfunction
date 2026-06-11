execute if predicate aspects:aspect/any_score run return fail
execute if predicate aspects:aspect/any run return fail

# Open Aspect Choosing dialog or assign default Aspect
execute unless score @s aspects.dialog.menu_requested matches 1 if score #aspects aspects.config.player.force_default_aspect matches -1.. run return run function aspects:config/player/force_default_aspect/assign
return run function aspects:dialog/choose_aspect/open_menu
