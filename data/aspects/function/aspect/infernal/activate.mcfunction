# Perform generic ACTIVATE logic
function aspects:aspect/generic/activate
# Set new Aspect
function aspectlib:player_id/expose
data modify storage aspectlib:dummy new_aspect set from storage aspects:aspect_list infernal.name
function aspects:aspect/generic/assign_data with storage aspectlib:dummy
# Set Aspect Groups
function aspects:aspect_group/set/hydrophobic
function aspects:aspect_group/set/fire_based
function aspects:aspect_group/set/fireproof
# Trigger events
function aspects:aspect/infernal/on_respawn
# Regrant advancement to show they became it as a Toast
advancement revoke @s only aspects:gameplay/aspect/infernal/root
advancement grant @s only aspects:gameplay/aspect/infernal/root