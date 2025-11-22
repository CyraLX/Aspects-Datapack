# If the player is exposed to water, increment scores and return
execute if predicate aspectlib:flags/is_wet run return run function aspects:aspect/generic/moisture/scoreboard/increase

# If user has normal water breathing, do not do anything else
execute if predicate aspectlib:status_effect/water_breathing/normal run return fail
# Otherwise if they are at 10 seconds left of Water Breathing, decrease the score of the turtle helmet timer until 0
execute if score @s aspects.generic.moisture.turtle_helmet matches 1.. if predicate aspectlib:status_effect/water_breathing/turtle_helmet run return run function aspects:aspect/generic/moisture/scoreboard/decrease_turtle_helmet

# Clamp score between 0 and 600
execute if score @s aspects.generic.moisture matches ..0 run scoreboard players set @s aspects.generic.moisture 0
execute if score @s aspects.generic.moisture matches 600.. run scoreboard players set @s aspects.generic.moisture 600
# If Moisture is 0, damage player and return
execute if score @s aspects.generic.moisture matches ..0 run return run function aspects:aspect/generic/moisture/damage_user
# Otherwise play a pop sound randomly while decreasing score and returning
execute if score @s aspects.generic.moisture matches 1..599 if predicate aspectlib:random/040 run playsound ui.hud.bubble_pop player @s ~ ~ ~ 1.0 1.25

execute unless predicate aspectlib:enchantment/respiration/any run return run scoreboard players remove @s aspects.generic.moisture 30
execute if predicate aspectlib:enchantment/respiration/1 run return run scoreboard players remove @s aspects.generic.moisture 20
execute if predicate aspectlib:enchantment/respiration/2 run return run scoreboard players remove @s aspects.generic.moisture 15
execute if predicate aspectlib:enchantment/respiration/3 run return run scoreboard players remove @s aspects.generic.moisture 12
