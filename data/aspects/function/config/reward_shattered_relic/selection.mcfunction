# Add seperator
tellraw @s ""
# Header
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"REWARD_SHATTERED_RELIC",color:"gold"}]}
# Explanation
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"> ",bold:true},{text:"When a Player kills an Aspect, should they drop a Shattered Relic",italic:true}]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"/ ",bold:true},"Default: ",{text:"Enabled",color:"green"}]}
# Footer
execute if score #aspects aspects.config.reward_shattered_relic matches 1 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"\\",bold:true},{text:" ",underlined:true,extra:["Current: ",{text:"Enabled",color:"green"},{text:" | ",bold:true},{text:"Turn OFF",color:"blue",click_event:{action:"run_command",command:"function aspects:config/reward_shattered_relic/toggle"},hover_event:{action:"show_text",value:"Click to Turn OFF"}}," "]},{text:"/",bold:true}]}
execute if score #aspects aspects.config.reward_shattered_relic matches 0 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"\\",bold:true},{text:" ",underlined:true,extra:["Current: ",{text:"Disabled",color:"red"},{text:" | ",bold:true},{text:"Turn ON",color:"blue",click_event:{action:"run_command",command:"function aspects:config/reward_shattered_relic/toggle"},hover_event:{action:"show_text",value:"Click to Turn ON"}}," "]},{text:"/",bold:true}]}
