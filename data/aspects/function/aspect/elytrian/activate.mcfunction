# Perform generic ACTIVATE logic
function aspects:aspect/generic/activate
# Prepare for new Aspect
function aspectlib:equipment/drop_chestplate
function aspects:aspect/elytrian/advancement/flying_marathon/cancel_tracking
# Set new Aspect
function aspectlib:player_id/expose
data modify storage aspectlib:dummy new_aspect set from storage aspects:aspect_list elytrian.name
function aspects:aspect/generic/assign_data with storage aspectlib:dummy
# Trigger events
function aspects:aspect/elytrian/on_respawn
# Regrant advancement to show they became it as a Toast
advancement revoke @s only aspects:gameplay/aspect/elytrian/root
advancement grant @s only aspects:gameplay/aspect/elytrian/root