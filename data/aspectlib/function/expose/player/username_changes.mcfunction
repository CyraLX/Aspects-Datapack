# Exposes the player username change count into a temporary storage
# Intended to be used right away in macro commands such as `function <name> with storage aspectlib:cache temp`

# Make sure stored data has at least 0 if missing
$execute unless data storage aspectlib:users player.$(id).aspectlib.player.username_changes run data modify storage aspectlib:users player.$(id).aspectlib.player.username_changes set value 0
# Expose data
$data modify storage aspectlib:cache temp.username_changes set from storage aspectlib:users player.$(id).aspectlib.player.username_changes
