# Remove the option to be able to use trigger to run this function
execute if score @s aspects.choose_aspect = @s aspects.choose_aspect run scoreboard players reset @s aspects.choose_aspect
# Call ON_ASPECT_SWITCH event
function aspects:event/on_aspect_change/execute
# Default required storage values
data modify storage aspectlib:dummy new_aspect set value "undefined"
data modify storage aspectlib:dummy old_aspect set value "undefined"
# Store previous Aspect for later use
data modify storage aspectlib:dummy old_aspect set from entity @s equipment.body.components.minecraft:custom_data.aspects.aspect
# Remove previous Aspect
function #aspects:aspect/generic_remove with entity @s equipment.body.components.minecraft:custom_data.aspects
# Play sounds
playsound minecraft:entity.zombie_villager.converted player @a[distance=0.1..16] ~ ~ ~ 1 1.5
playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 1 1.5 1
