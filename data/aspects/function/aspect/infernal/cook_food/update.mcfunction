# Cook Main Hand first
execute if items entity @s weapon.mainhand #aspectlib:raw_food run return run function aspects:aspect/infernal/cook_food/mainhand/cook
# Cook Off Hand last
execute if items entity @s weapon.offhand #aspectlib:raw_food run function aspects:aspect/infernal/cook_food/offhand/cook
