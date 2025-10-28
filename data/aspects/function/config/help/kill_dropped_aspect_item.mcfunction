# Add seperator
tellraw @s ""
# Header
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"KILL_DROPPED_ASPECT_ITEM",color:"gold"}]}
# Explanation
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"> ",bold:true},{text:"When a Player Aspect dies, should they drop the Aspect Item that was equipped on them",italic:true,extra:[{text:"\n (This is a bug fix regarding `minecraft:prevent_equipment_drop` not functioning correctly` in versions 1.21.5 or lower)",color:"#9e9e70"}]}]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"/ ",bold:true},"Default: ",{text:"Enabled",color:"green"}]}
# Footer
execute if score #aspects aspects.config.kill_dropped_aspect_item matches 1 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"\\",bold:true},{text:" ",underlined:true,extra:["Current: ",{text:"Enabled",color:"green"},{text:" | ",bold:true},{text:"Turn OFF",color:"blue",click_event:{action:"run_command",command:"function aspects:config/toggle/kill_dropped_aspect_item"},hover_event:{action:"show_text",value:"Click to Turn OFF"}}," "]},{text:"/",bold:true}]}
execute if score #aspects aspects.config.kill_dropped_aspect_item matches 0 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"\\",bold:true},{text:" ",underlined:true,extra:["Current: ",{text:"Disabled",color:"red"},{text:" | ",bold:true},{text:"Turn ON",color:"blue",click_event:{action:"run_command",command:"function aspects:config/toggle/kill_dropped_aspect_item"},hover_event:{action:"show_text",value:"Click to Turn ON"}}," "]},{text:"/",bold:true}]}
