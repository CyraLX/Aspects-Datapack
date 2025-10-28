function #aspects:item/aspect_encyclopedia

execute unless score #aspects aspects.config.force_aspect_on_aspectless_players matches 1.. run return fail
execute if predicate aspects:dialog/choose_menu/is_open run return fail
execute if predicate aspects:aspect/any_score run return fail
execute if predicate aspects:aspect/any run return fail

execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," had the ",{translate:"item.aspects.aspect_picker",color:"gold"}," and ",{translate:"item.aspects.aspect_encyclopedia",color:"gold"}," items granted to them"]}
function aspects:dialog/choose_aspect/open_menu
