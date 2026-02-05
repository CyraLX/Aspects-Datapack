# Reset data
scoreboard players reset @s aspectlib.dummy

# Cook Main Hand first
execute if items entity @s weapon.mainhand #aspectlib:raw_food run function aspects:aspect/infernal/cook_food/mainhand/run
# Cook Off Hand last
execute if items entity @s weapon.offhand #aspectlib:raw_food run function aspects:aspect/infernal/cook_food/offhand/run

# Grant advancement if cooked an item with both hands
execute if score @s aspectlib.dummy matches 2.. run advancement grant @s only aspects:gameplay/aspect/infernal/top_chef
