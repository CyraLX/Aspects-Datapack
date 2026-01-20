# Add seperator
tellraw @s ""
# Header
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#b741b6",extra:["[",{translate:"aspects"},"]: "]},{translate:"config.aspects.enderian.teleport_downward_distance",color:"gold"}]}
# Current Value
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"> ",bold:true},{translate:"dialog.aspects.configs.entry.current",with:[{score:{name:"#aspects", objective:"aspects.config.enderian.teleport_downward_distance"},color:"blue"}]}]}
