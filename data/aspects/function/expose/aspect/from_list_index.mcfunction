# Exposes the Aspect Registry entry from an Index
data remove storage aspectlib:dummy aspect
$data modify storage aspectlib:dummy aspect set from storage aspects:registry aspect[$(list_index)]
