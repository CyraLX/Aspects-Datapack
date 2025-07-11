execute if predicate aspects:aspect/human/is_active run return run item replace entity @s weapon.offhand with minecraft:air 1

execute if predicate aspects:aspect/merling/is_active run item replace entity @s weapon.offhand with minecraft:stick 1
execute if predicate aspects:aspect/merling/is_active run return run item modify entity @s weapon.offhand aspects:focus/merling

execute if predicate aspects:aspect/enderian/is_active run item replace entity @s weapon.offhand with minecraft:stick 1
execute if predicate aspects:aspect/enderian/is_active run return run item modify entity @s weapon.offhand aspects:focus/enderian

execute if predicate aspects:aspect/shulk/is_active run item replace entity @s weapon.offhand with minecraft:stick 1
execute if predicate aspects:aspect/shulk/is_active run return run item modify entity @s weapon.offhand aspects:focus/shulk

execute if predicate aspects:aspect/feline/is_active run item replace entity @s weapon.offhand with minecraft:stick 1
execute if predicate aspects:aspect/feline/is_active run return run item modify entity @s weapon.offhand aspects:focus/feline

execute if predicate aspects:aspect/infernal/is_active run item replace entity @s weapon.offhand with minecraft:stick 1
execute if predicate aspects:aspect/infernal/is_active run return run item modify entity @s weapon.offhand aspects:focus/infernal

execute if predicate aspects:aspect/elytrian/is_active run item replace entity @s weapon.offhand with minecraft:stick 1
execute if predicate aspects:aspect/elytrian/is_active run return run item modify entity @s weapon.offhand aspects:focus/elytrian

execute if predicate aspects:aspect/honey_bee/is_active run item replace entity @s weapon.offhand with minecraft:stick 1
execute if predicate aspects:aspect/honey_bee/is_active run return run item modify entity @s weapon.offhand aspects:focus/honey_bee

execute if predicate aspects:aspect/rascal/is_active run item replace entity @s weapon.offhand with minecraft:stick 1
execute if predicate aspects:aspect/rascal/is_active run return run item modify entity @s weapon.offhand aspects:focus/rascal

function #aspects:debug/give_aspect_focus