# Perform generic ACTIVATE logic
function aspects:aspect/generic/activate
# Set new Aspect
function aspectlib:player_id/expose
data modify storage aspectlib:dummy new_aspect set from storage aspects:aspect_list rascal.name
function aspects:aspect/generic/assign_data with storage aspectlib:dummy
# Trigger events
function aspects:aspect/rascal/on_respawn
# Regrant advancement to show they became it as a Toast
advancement revoke @s only aspects:gameplay/aspect/rascal/root
advancement grant @s only aspects:gameplay/aspect/rascal/root