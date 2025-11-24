# Fix Function triggering if previous Aspects Pack Format is 2 or lower
# Fixes Storage Player Data was it was redone in Pack Format 3
$scoreboard players set #aspects aspectlib.dummy $(aspects_pack_format_previous)
execute unless score #aspects aspectlib.dummy matches ..2 run return fail

# Migrate player data to aspectlib
$execute if data storage aspectlib:users player.$(id).player.id run data modify storage aspectlib:users player.$(id).aspectlib.player.id set from storage aspectlib:users player.$(id).player.id
$execute if data storage aspectlib:users player.$(id).player.id run data remove storage aspectlib:users player.$(id).player
# Store player name to aspectlib
function aspectlib:player/username/trigger
# Migrate aspect to namespaced version
$data modify storage aspectlib:users player.$(id).aspects.aspect set from storage aspects:registry aspect."$(aspect_namespace):$(aspect_name)"
# Migrate aspect data to namespaced version
$execute unless data storage aspects:registry aspect."$(aspect_namespace):$(aspect_name)" run return fail
$execute unless data storage aspectlib:users player.$(id).aspects.aspect_data.$(aspect_name) run return fail

$data modify storage aspectlib:users player.$(id).aspects.aspect_data."$(aspect_namespace):$(aspect_name)" set from storage aspectlib:users player.$(id).aspects.aspect_data.$(aspect_name)
$data remove storage aspectlib:users player.$(id).aspects.aspect_data.$(aspect_name)
