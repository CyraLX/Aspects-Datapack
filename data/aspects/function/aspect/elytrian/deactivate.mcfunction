# Clean up before removing Aspect
function aspects:aspect/elytrian/rocket_damage/scoreboard/disable
function aspectlib:player_id/expose
function aspects:aspect/elytrian/remove_data with storage aspectlib:dummy
function aspects:aspect/elytrian/fly_damage/remove
item modify entity @s armor.body aspects:aspect/elytrian/remove
# Perform generic ACTIVATE logic
function aspects:aspect/generic/deactivate
item replace entity @s armor.chest with air
