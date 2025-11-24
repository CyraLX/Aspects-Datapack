# Get ID for the Bossbar
function aspectlib:player/id/expose

# Update Bossbar with the Score value 
function aspects:aspect_group/moisture_dependant/logic/bossbar/set_value with storage aspectlib:dummy
# If the Score is empty, hide the Bossbar
execute if score @s aspects.aspect_group.moisture_dependant.current matches 600.. run return run function aspects:aspect_group/moisture_dependant/logic/bossbar/hide with storage aspectlib:dummy
# Otherwise show it
execute if score @s aspects.aspect_group.moisture_dependant.current matches ..599 run return run function aspects:aspect_group/moisture_dependant/logic/bossbar/show with storage aspectlib:dummy
