execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]}, {selector:"@s",color:"gold"}," has incorrect Aspect Item data (shadow_color). Fixing..."]}

$function aspects:aspect/generic/give_aspect with storage aspects:registry aspect."$(namespace):$(name)"
