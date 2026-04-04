execute if predicate aspects:aspect/any_score run return fail
execute if predicate aspects:aspect/any run return fail

execute if entity @p[tag=get_debug_logs] unless score @s aspects.essence_cage_universal.was_used matches 1 if score #aspects aspects.config.force_default_aspect matches 1.. run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," had a ", {text:"Default Aspect",color:"gold"}, " assigned to them"]}
execute unless score @s aspects.essence_cage_universal.was_used matches 1 if score #aspects aspects.config.force_default_aspect matches 1.. run return run function aspects:aspect/human/activate

execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," had the ", {translate:"dialog.aspects.choose_aspect",color:"gold"}, " dialog opened for them"]}
return run function aspects:dialog/choose_aspect/open_menu
