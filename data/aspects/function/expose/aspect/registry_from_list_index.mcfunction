# Exposes the namespaced name of the Aspect from List
data remove storage aspectlib:dummy aspect
$data modify storage aspectlib:dummy aspect set from storage aspects:registry aspect[$(list_index)]
