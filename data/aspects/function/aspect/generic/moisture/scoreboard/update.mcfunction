# If the player is able to breathe, increment scores and return
execute if predicate aspects:generic/aquatic/can_breathe run return run function aspects:aspect/generic/moisture/scoreboard/increase
# Otherwise if they are at 10 seconds left of Water Breathing, decrease the score of the turtle helmet timer until 0
execute if score @s aspects.generic.moisture.turtle_helmet matches 1.. if predicate aspectlib:status_effect/water_breathing/turtle_helmet run return run function aspects:aspect/generic/moisture/scoreboard/decrease_turtle_helmet
# Clamp score between 0 and 180
execute if score @s aspects.generic.moisture matches ..0 run scoreboard players set @s aspects.generic.moisture 0
execute if score @s aspects.generic.moisture matches 180.. run scoreboard players set @s aspects.generic.moisture 180
# If Moisture is 0, damage player and return
execute if score @s aspects.generic.moisture matches ..0 run return run damage @s 2.0 aspects:generic/dehydration
# Otherwise play a pop sound randomly while decreasing score and returning
execute if score @s aspects.generic.moisture matches 1..179 if predicate aspectlib:random/040 run playsound ui.hud.bubble_pop player @s ~ ~ ~ 1.0 1.25

execute if predicate aspects:generic/aquatic/oxygen_drain/respiration_0 run return run scoreboard players remove @s aspects.generic.moisture 12
execute if predicate aspects:generic/aquatic/oxygen_drain/respiration_1 run return run scoreboard players remove @s aspects.generic.moisture 6
execute if predicate aspects:generic/aquatic/oxygen_drain/respiration_2 run return run scoreboard players remove @s aspects.generic.moisture 4
execute if predicate aspects:generic/aquatic/oxygen_drain/respiration_3 run return run scoreboard players remove @s aspects.generic.moisture 3