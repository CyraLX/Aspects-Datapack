data remove storage aspectlib:dummy aspect_translatable
$data modify storage aspectlib:dummy aspect_translatable set value [{translate:"dialog.aspects.aspect_info.external_title",with:[{translate:"$(namespace)",color:"blue",italic:true},{translate:"aspect.$(namespace).$(name)",color:"$(color)",shadow_color:$(shadow_color)}]}]
