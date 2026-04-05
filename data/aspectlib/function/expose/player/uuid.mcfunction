# Exposes the player uuid into a temporary storage
# Intended to be used right away in macro commands such as `function <name> with storage aspectlib:dummy`
data modify storage aspectlib:dummy uuid set from entity @s UUID
