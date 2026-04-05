# Exposes the namespaced name of the Aspect from List
data remove storage aspectlib:dummy aspect_registry
$data modify storage aspectlib:dummy aspect_registry set from storage aspects:registry aspect.list[$(list_index)]
