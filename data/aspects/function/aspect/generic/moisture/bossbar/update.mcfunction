function aspectlib:player/id/expose

# Update Bossbar with the Score value 
function aspects:aspect/generic/moisture/bossbar/set_value with storage aspectlib:dummy
# If the Score is empty, hide the Bossbar
execute if score @s aspects.generic.moisture matches 180.. run return run function aspects:aspect/generic/moisture/bossbar/hide with storage aspectlib:dummy
# Otherwise show it
execute if score @s aspects.generic.moisture matches ..179 run return run function aspects:aspect/generic/moisture/bossbar/show with storage aspectlib:dummy
