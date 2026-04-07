execute if score #aspects aspects.config.force_default_aspect matches ..-1 run return fail
execute unless score #aspects aspects.config.force_default_aspect = #aspects aspects.config.force_default_aspect run return run function aspects:dialog/config/force_default_aspect/fix_value
execute store result storage aspectlib:dummy aspect_id int 1 run scoreboard players get #aspects aspects.config.force_default_aspect
function aspects:dialog/config/force_default_aspect/validate_macro with storage aspectlib:dummy
execute if score #aspects aspects.config.force_default_aspect matches ..-1 run return fail

execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," had a ", {text:"Default Aspect",color:"gold"}, " assigned to them"]}
return run function aspects:aspect/activate_aspect_macro with storage aspectlib:dummy aspect