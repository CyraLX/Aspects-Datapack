# Exposes the namespaced name of the Aspect from List
data remove storage aspectlib:dummy aspect_namespaced_name
$data modify storage aspectlib:dummy aspect_namespaced_name set from storage aspects:registry aspect.list[$(list_index)]

