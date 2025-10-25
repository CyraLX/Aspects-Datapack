$scoreboard players set #aspects aspectlib.dummy $(aspects_pack_format_previous)
execute unless score #aspects aspectlib.dummy matches ..2 run return fail

# Migrate player data to aspectlib
$execute if data storage aspectlib:player_$(id) player.id run data modify storage aspectlib:player_$(id) aspectlib.player.id set from storage aspectlib:player_$(id) player.id
$execute if data storage aspectlib:player_$(id) player.id run data remove storage aspectlib:player_$(id) player
# Store player name to aspectlib
function aspectlib:player/username/trigger
# Migrate aspect to namespaced version
$data modify storage aspectlib:player_$(id) aspects.aspect set from storage aspects:registry aspect.$(aspect_namespace):$(aspect_name)
# Migrate aspect data to namespaced version
$execute unless data storage aspects:registry aspect.$(aspect_namespace):$(aspect_name) run return fail
$execute unless data storage aspectlib:player_$(id) aspects.aspect_data.$(aspect_name) run return fail

$data modify storage aspectlib:player_$(id) aspects.aspect_data."$(aspect_namespace):$(aspect_name)" set from storage aspectlib:player_$(id) aspects.aspect_data.$(aspect_name)
$data remove storage aspectlib:player_$(id) aspects.aspect_data.$(aspect_name)
