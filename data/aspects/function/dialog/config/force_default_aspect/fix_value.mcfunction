execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," failed to be assigned to ", {translate:"extra.aspects.default_aspect",color:"gold"}, " as id was invalid. Defaulting config ", {translate:"config.aspects.force_default_aspect", color: red}, "..."]}

function aspects:config/force_default_aspect/default

return fail