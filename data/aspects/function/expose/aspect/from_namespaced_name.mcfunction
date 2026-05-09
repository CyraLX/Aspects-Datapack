data remove storage aspectlib:cache temp.aspect
$data modify storage aspectlib:cache temp.aspect set from storage aspects:registry aspect[{namespace:$(namespace),name:$(name)}]
