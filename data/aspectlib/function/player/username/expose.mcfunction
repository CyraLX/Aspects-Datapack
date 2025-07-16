# Exposes the player username into a temporary storage
# Intended to be used right away in macro commands such as `function <name> with storage aspectlib:dummy`
$data modify storage aspectlib:dummy username set from storage aspectlib:player_$(id) aspectlib.player.username
