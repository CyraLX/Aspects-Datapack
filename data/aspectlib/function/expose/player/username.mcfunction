# Exposes the player username into a temporary storage
# Intended to be used right away in macro commands such as `function <name> with storage aspectlib:cache temp`
$data modify storage aspectlib:cache temp.username set from storage aspectlib:users player.$(id).aspectlib.player.username
