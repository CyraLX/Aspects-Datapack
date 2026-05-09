data remove storage aspectlib:dummy config_translatable
$data modify storage aspectlib:dummy config_translatable set value [{translate:"dialog.aspects.configs.entry",with:[{translate:"$(namespace)",color:"blue",italic:true},{translate:"config.$(namespace).$(type).$(name)",with:$(name_with)}]}]
