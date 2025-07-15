# Aspect specific PRE-DEACTIVATE logic

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:aspect_list aspects:elytrian

# Aspect specific POST-DEACTIVATE logic
item replace entity @s armor.chest with air
function aspects:aspect/elytrian/fly_damage/remove
function aspects:aspect/elytrian/rocket_damage/scoreboard/disable
