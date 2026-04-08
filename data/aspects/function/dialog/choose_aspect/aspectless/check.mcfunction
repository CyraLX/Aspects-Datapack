execute if predicate aspects:aspect/any_score run return fail
execute if predicate aspects:aspect/any run return fail

execute unless score @s aspects.dialog.menu_requested matches 1 if function aspects:config/force_default_aspect/assign run return 1

return run function aspects:dialog/choose_aspect/open_menu
