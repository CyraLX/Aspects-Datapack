# Exposes the player uuid into a temporary storage
# Intended to be used right away in macro commands such as `function <name> with storage aspectlib:cache temp`
data modify storage aspectlib:cache temp.uuid set from entity @s UUID
