# Perform generic ACTIVATE logic
function aspects:aspect/generic/activate
# Prepare for new Aspect
execute unless score @s aspects.focus.shulk.has_storage = @s aspects.focus.shulk.has_storage run scoreboard players set @s aspects.focus.shulk.has_storage 0
# Set new Aspect
function aspectlib:player_id/expose
data modify storage aspectlib:dummy new_aspect set from storage aspects:aspect_list shulk.name
function aspects:aspect/generic/assign_data with storage aspectlib:dummy
# Trigger events
function aspects:aspect/shulk/on_respawn
# Regrant advancement to show they became it as a Toast
advancement revoke @s only aspects:gameplay/aspect/shulk/root
advancement grant @s only aspects:gameplay/aspect/shulk/root
