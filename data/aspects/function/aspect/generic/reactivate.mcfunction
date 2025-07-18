# Set new Aspect
$data modify storage aspectlib:player_$(id) aspects.aspect set from storage aspects:aspect_list $(aspect_namespace):$(aspect_name)
$scoreboard players set @s aspects.aspect_id $(aspect_id)
# Trigger events
function aspects:aspect/generic/prepare_for_on_respawn
