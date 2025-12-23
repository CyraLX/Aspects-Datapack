# Update scoreboards
function aspects:item/essence_cage/lore/retrieve_to_storage

# Apply base lore
item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_1
# If there aren't stored Essences, insert Empty lore and return
execute unless predicate aspects:item/essence_cage/lore/has_stored_essence/any run return run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_empty
# Otherwise apply stored Essences in Lore
## Apex
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/apex run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_apex
## Aquatic
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/aquatic run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_aquatic
## Beast
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/beast run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_beast
## Bug
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/bug run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_bug
## Dark
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/dark run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_dark
## Ethereal
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/ethereal run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_ethereal
## Feline
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/feline run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_feline
## Fire
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/fire run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_fire
## Flying
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/flying run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_flying
## Humanoid
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/humanoid run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_humanoid
## Ice
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/ice run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_ice
## Normal
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/normal run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_normal
## Ooze
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/ooze run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_ooze
## Plant
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/plant run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_plant
## Steel
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/steel run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_steel
## Undead
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/undead run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_undead
## Void
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/void run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_void
## Wild
execute if predicate aspects:item/essence_cage/lore/has_stored_essence/wild run item modify entity @s weapon.offhand aspects:essence_cage/empty/apply_lore/layer_wild