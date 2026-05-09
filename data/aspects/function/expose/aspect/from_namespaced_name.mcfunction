data remove storage aspectlib:cache temp.aspect
$data modify storage aspectlib:cache temp.aspect set from storage aspectlib:registry aspect[{namespace:$(namespace),name:$(name)}]
