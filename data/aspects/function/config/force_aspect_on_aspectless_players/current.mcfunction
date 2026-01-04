# Add seperator
tellraw @s ""
# Header
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{translate:"config.aspects.force_aspect_on_aspectless_players",color:"gold"}]}
# Current Value
execute if score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run return run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"> ",bold:true},{translate:"dialog.aspects.configs.entry.current",with:[{translate:"extra.aspects.state.enabled",color:"green"}]}]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"> ",bold:true},{translate:"dialog.aspects.configs.entry.current",with:[{translate:"extra.aspects.state.disabled",color:"red"}]}]}
