# If the player is exposed to water, increment scores and return
execute if predicate aspectlib:flags/is_wet run return run function aspects:aspect_group/moisture_dependant/logic/scoreboard/increase

# If user has normal water breathing or conduit power, end early by damaging the player if they also have no moisture
execute if predicate aspectlib:status_effect/water_breathing/any run return run execute if score @s aspects.aspect_group.moisture_dependant.current matches ..0 run function aspects:aspect_group/moisture_dependant/logic/damage_user
execute if predicate aspectlib:status_effect/conduit_power/any run return run execute if score @s aspects.aspect_group.moisture_dependant.current matches ..0 run function aspects:aspect_group/moisture_dependant/logic/damage_user
# Otherwise if they are at 10 seconds left of Water Breathing, decrease the score of the turtle helmet timer until 0
execute if score @s aspects.aspect_group.moisture_dependant.turtle_helmet matches 1.. if predicate aspectlib:status_effect/water_breathing/turtle_helmet run return run function aspects:aspect_group/moisture_dependant/logic/scoreboard/decrease_turtle_helmet

# Clamp score between 0 and 600
execute if score @s aspects.aspect_group.moisture_dependant.current matches ..0 run scoreboard players set @s aspects.aspect_group.moisture_dependant.current 0
execute if score @s aspects.aspect_group.moisture_dependant.current matches 600.. run scoreboard players set @s aspects.aspect_group.moisture_dependant.current 600
# If Moisture is 0, damage player and return
execute if score @s aspects.aspect_group.moisture_dependant.current matches ..0 run return run function aspects:aspect_group/moisture_dependant/logic/damage_user
# Otherwise play a pop sound randomly while decreasing score and returning
execute if score @s aspects.aspect_group.moisture_dependant.current matches 1..599 if predicate aspectlib:random/040 run playsound ui.hud.bubble_pop player @s ~ ~ ~ 1.0 1.25

execute unless predicate aspectlib:enchantment/respiration/any run return run scoreboard players remove @s aspects.aspect_group.moisture_dependant.current 30
execute if predicate aspectlib:enchantment/respiration/1 run return run scoreboard players remove @s aspects.aspect_group.moisture_dependant.current 20
execute if predicate aspectlib:enchantment/respiration/2 run return run scoreboard players remove @s aspects.aspect_group.moisture_dependant.current 15
execute if predicate aspectlib:enchantment/respiration/3 run return run scoreboard players remove @s aspects.aspect_group.moisture_dependant.current 12
