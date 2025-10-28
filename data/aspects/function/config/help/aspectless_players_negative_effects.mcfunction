# Add seperator
tellraw @s ""
# Header
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"ASPECTLESS_PLAYERS_NEGATIVE_EFFECTS",color:"gold"}]}
# Explanation
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"> ",bold:true},{text:"Should players without an Aspect have negative effects",italic:true,extra:[{text:"\n (Functional on 1.21.6+ only!)",color:"#9e9e70"}]}]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"/ ",bold:true},"Default: ",{text:"Enabled",color:"green"}]}
# Footer
execute if score #aspects aspects.config.aspectless_players_negative_effects matches 1 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"\\",bold:true},{text:" ",underlined:true,extra:["Current: ",{text:"Enabled",color:"green"},{text:" | ",bold:true},{text:"Turn OFF",color:"blue",click_event:{action:"run_command",command:"function aspects:config/toggle/aspectless_players_negative_effects"},hover_event:{action:"show_text",value:"Click to Turn OFF"}}," "]},{text:"/",bold:true}]}
execute if score #aspects aspects.config.aspectless_players_negative_effects matches 0 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"\\",bold:true},{text:" ",underlined:true,extra:["Current: ",{text:"Disabled",color:"red"},{text:" | ",bold:true},{text:"Turn ON",color:"blue",click_event:{action:"run_command",command:"function aspects:config/toggle/aspectless_players_negative_effects"},hover_event:{action:"show_text",value:"Click to Turn ON"}}," "]},{text:"/",bold:true}]}
