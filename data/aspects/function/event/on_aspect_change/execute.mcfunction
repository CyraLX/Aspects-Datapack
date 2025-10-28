execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," triggered ",{text:"ON_ASPECT_CHANGE",color:"gold"}," event"]}
function #aspects:event/on_aspect_change
