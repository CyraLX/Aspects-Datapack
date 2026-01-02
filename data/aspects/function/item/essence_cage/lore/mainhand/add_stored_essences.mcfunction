# Apply Stored Essences
item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/stored_essences
## If there aren't stored Essences, insert Empty lore and return
execute unless predicate aspects:item/essence_cage/lore/has_stored_essence/any run return run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/empty
## Otherwise apply stored Essences in Lore
### Apex
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/apex run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/apex
### Aquatic
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/aquatic run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/aquatic
### Beast
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/beast run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/beast
### Bug
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/bug run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/bug
### Dark
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/dark run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/dark
### Ethereal
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/ethereal run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/ethereal
### Feline
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/feline run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/feline
### Fire
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/fire run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/fire
### Flying
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/flying run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/flying
### Humanoid
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/humanoid run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/humanoid
### Ice
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/ice run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/ice
### Normal
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/normal run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/normal
### Ooze
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/ooze run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/ooze
### Plant
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/plant run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/plant
### Steel
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/steel run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/steel
### Undead
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/undead run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/undead
### Void
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/void run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/void
### Wild
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/wild run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_lore/essence/wild
