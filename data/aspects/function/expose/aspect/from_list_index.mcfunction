# Exposes the Aspect Registry entry from an Index
data remove storage aspectlib:cache temp.aspect
$data modify storage aspectlib:cache temp.aspect set from storage aspects:registry aspect[$(list_index)]
