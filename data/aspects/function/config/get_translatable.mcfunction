data remove storage aspectlib:dummy config_translatable
$data modify storage aspectlib:dummy config_translatable set value [{translate:"config.$(namespace).$(type).$(name)",with:$(name_with)}]
