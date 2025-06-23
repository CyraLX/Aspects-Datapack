# If ready, finish cooking food
execute if items entity @s weapon.mainhand #aspectlib:raw_food if predicate aspects:aspect/infernal/cook_food/mainhand_can_be_cooked run function aspects:aspect/infernal/cook_food/mainhand/finish
# If not ready, prepare cooking held food
execute if items entity @s weapon.mainhand #aspectlib:raw_food unless predicate aspects:aspect/infernal/cook_food/mainhand_can_be_cooked run function aspects:aspect/infernal/cook_food/mainhand/prepare

# If ready, finish cooking food
execute if items entity @s weapon.offhand #aspectlib:raw_food if predicate aspects:aspect/infernal/cook_food/offhand_can_be_cooked run function aspects:aspect/infernal/cook_food/offhand/finish
# If not ready, prepare cooking held food
execute if items entity @s weapon.offhand #aspectlib:raw_food unless predicate aspects:aspect/infernal/cook_food/offhand_can_be_cooked run function aspects:aspect/infernal/cook_food/offhand/prepare