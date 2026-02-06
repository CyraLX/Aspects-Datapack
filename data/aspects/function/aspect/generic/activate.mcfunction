$data modify storage aspectlib:dummy new_aspect set from storage aspects:registry aspect."$(namespace):$(name)"
# Expose the player ID
function aspectlib:player/id/expose
# Store data into storage for this function to be used
function aspects:aspect/generic/store_activate_data with storage aspectlib:dummy
# Remove the option to be able to use trigger to run this function
execute if score @s aspects.choose_aspect = @s aspects.choose_aspect run scoreboard players reset @s aspects.choose_aspect
# Remove previous Aspect if not already removed
execute if predicate aspects:aspect/any if data storage aspectlib:dummy old_aspect run function aspects:aspect/generic/remove_old_aspect with storage aspectlib:dummy old_aspect
# Set new Aspect
function aspects:aspect/generic/assign_data with storage aspectlib:dummy
# Trigger events
function aspects:aspect/generic/on_respawn with storage aspectlib:dummy new_aspect
# Regrant advancement to show they became it as a Toast
$execute if entity @s[type=minecraft:player] run advancement revoke @s only $(namespace):gameplay/aspect/$(name)/root
$execute if entity @s[type=minecraft:player] run advancement grant @s only $(namespace):gameplay/aspect/$(name)/root
# Play sounds
playsound minecraft:entity.zombie_villager.converted player @a[distance=0.1..16] ~ ~ ~ 1 1.5
playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 1 1.5 1
# Call ON_ASPECT_SWITCH event
function aspects:event/on_aspect_change/execute
