# Perform generic ACTIVATE logic
function aspects:aspect/generic/activate
# Prepare for new Aspect
function aspects:aspect/feline/predator/bossbar/initialize
# Set new Aspect
function aspectlib:player_id/expose
data modify storage aspectlib:dummy new_aspect set from storage aspects:aspect_list feline.name
function aspects:aspect/generic/assign_data with storage aspectlib:dummy
# Trigger events
function aspects:aspect/feline/on_respawn
# Regrant advancement to show they became it as a Toast
advancement revoke @s only aspects:gameplay/aspect/feline/root
advancement grant @s only aspects:gameplay/aspect/feline/root