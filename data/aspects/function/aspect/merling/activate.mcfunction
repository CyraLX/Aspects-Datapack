# Perform generic ACTIVATE logic
function aspects:aspect/generic/activate
# Set new Aspect
function aspectlib:player_id/expose
data modify storage aspectlib:dummy new_aspect set from storage aspects:aspect_list merling.name
function aspects:aspect/generic/assign_data with storage aspectlib:dummy
# Set Aspect Groups
function aspects:aspect_group/set/sensitive_to_impaling
function aspects:aspect_group/set/water_breathing
function aspects:aspect_group/set/moisture_dependant
# Trigger events
function aspects:aspect/merling/on_respawn
# Regrant advancement to show they became it as a Toast
advancement revoke @s only aspects:gameplay/aspect/merling/root
advancement grant @s only aspects:gameplay/aspect/merling/root