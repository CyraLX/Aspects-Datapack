# Add seperator
tellraw @s ""
# Header
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"TRACK_STATISTICS",color:"gold"}]}
# Explanation
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"> ",bold:true},{text:"Should update statistics tracked by Aspects such as Aspect pick count, remove count, active count, ect...",italic:true,extra:[{text:"\n (If turned off and turned on again later, statistics WILL desync! Only turn off if you intent to keep it that way permanently or need to test something for a brief period)",color:"#9e9e70"}]}]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"/ ",bold:true},"Default: ",{text:"Enabled",color:"green"}]}
# Footer
execute if score #aspects aspects.config.track_statistics matches 1 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"\\",bold:true},{text:" ",underlined:true,extra:["Current: ",{text:"Enabled",color:"green"},{text:" | ",bold:true},{text:"Turn OFF",color:"blue",click_event:{action:"run_command",command:"function aspects:config/track_statistics/toggle"},hover_event:{action:"show_text",value:"Click to Turn OFF"}}," "]},{text:"/",bold:true}]}
execute if score #aspects aspects.config.track_statistics matches 0 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"\\",bold:true},{text:" ",underlined:true,extra:["Current: ",{text:"Disabled",color:"red"},{text:" | ",bold:true},{text:"Turn ON",color:"blue",click_event:{action:"run_command",command:"function aspects:config/track_statistics/toggle"},hover_event:{action:"show_text",value:"Click to Turn ON"}}," "]},{text:"/",bold:true}]}
