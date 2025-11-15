# Set new Aspect
$data modify storage aspectlib:player_$(id) aspects.aspect set from storage aspects:registry aspect."$(aspect_namespace):$(aspect_name)"
$scoreboard players set @s aspects.aspect_id $(aspect_id)
# Reset Aspect Groups
function #aspects:aspect_group/deactivate_all
# Trigger events
function aspects:aspect/generic/prepare_for_on_respawn
