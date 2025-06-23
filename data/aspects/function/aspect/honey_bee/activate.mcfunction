# Perform generic ACTIVATE logic
function aspects:aspect/generic/activate
# Prepare for new Aspect
function aspectlib:equipment/drop_chestplate
# Set new Aspect
function aspectlib:player_id/expose
data modify storage aspectlib:dummy new_aspect set from storage aspects:aspect_list honey_bee.name
function aspects:aspect/generic/assign_data with storage aspectlib:dummy
function aspects:focus/honey_bee/set_none with storage aspectlib:dummy
# Set Aspect Groups
function aspects:aspect_group/set/sensitive_to_bane_of_arthropods
# Trigger events
function aspects:aspect/honey_bee/on_respawn
# Regrant advancement to show they became it as a Toast
advancement revoke @s only aspects:gameplay/aspect/honey_bee/root
advancement grant @s only aspects:gameplay/aspect/honey_bee/root