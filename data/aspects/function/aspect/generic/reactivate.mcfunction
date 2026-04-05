# Set new Aspect
$data modify storage aspectlib:users player.$(id).aspects.aspect set from storage aspects:registry aspect[{namespace: "$(aspect_namespace)", name: "$(aspect_name)"}]
$scoreboard players set @s aspects.aspect_id $(aspect_id)
# Reset Aspect Groups
function #aspects:aspect_group/deactivate_all
# Trigger events
function aspects:aspect/generic/prepare_for_on_respawn
