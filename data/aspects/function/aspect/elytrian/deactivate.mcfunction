# Clean up before removing Aspect
function aspectlib:player_id/expose
function aspects:aspect/elytrian/remove_data with storage aspectlib:dummy
function aspects:aspect/elytrian/fly_damage/remove
# Perform generic ACTIVATE logic
function aspects:aspect/generic/deactivate
item replace entity @s armor.chest with air
