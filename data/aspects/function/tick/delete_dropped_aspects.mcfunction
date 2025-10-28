execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},"Item ", {selector:"@s",color:"gold"}," was deleted nearby ",{selector:"@p",color:"gold"}]}
kill @s
