# Exposes the registry of the Aspect from namespaced name
data remove storage aspectlib:dummy aspect_registry
$data modify storage aspectlib:dummy aspect_registry set from storage aspects:registry aspect."$(namespace):$(name)"