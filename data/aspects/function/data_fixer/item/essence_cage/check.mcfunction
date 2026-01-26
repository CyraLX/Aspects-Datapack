# Check if held Essence Cages have missing components, if missing fix them
execute if predicate aspects:data_fixer/item/essence_cage/0-7/mainhand run item modify entity @s weapon.mainhand aspects:data_fixer/essence_cage/0-7
execute if predicate aspects:data_fixer/item/essence_cage/0-7/offhand run item modify entity @s weapon.offhand aspects:data_fixer/essence_cage/0-7
