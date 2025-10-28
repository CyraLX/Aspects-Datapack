execute if predicate aspects:aspect/any_score run return fail
execute if predicate aspects:aspect/any run return fail

execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," had the ", {translate:"dialog.aspects.choose_aspect",color:"gold"}, " dialog opened for them"]}
return run function aspects:dialog/choose_aspect/open_menu
