execute if entity @p[tag=aspectlib.receive_logs_expanded] run tellraw @a[tag=aspectlib.receive_logs_expanded] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," triggered ",{text:"ON_ASPECT_CHANGE",color:"gold"}," event"]}
function #aspects:event/on_aspect_change
