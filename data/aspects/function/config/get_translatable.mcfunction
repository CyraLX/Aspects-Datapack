data remove storage aspectlib:cache temp.config_translatable
$data modify storage aspectlib:cache temp.config_translatable set value [{translate:"config.$(namespace).$(type).$(name)",with:$(name_with)}]
