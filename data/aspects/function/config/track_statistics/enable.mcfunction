# Give temporary tag
tag @s add aspectlib.config_changer
# Give feedback in chat
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs, tag=!aspectlib.config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," > ",{translate:"config.aspects.track_statistics",color:"gold"}," = ",{translate:"extra.aspects.state.enabled",color:"green"}]}
tellraw @a[tag=aspectlib.receive_logs, tag=!aspectlib.config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{translate:"config.aspects.track_statistics",color:"gold"}," = ",{translate:"extra.aspects.state.enabled",color:"green"}]}
# Set scoreboard
scoreboard players set #aspects aspects.config.track_statistics 1
# Cleanup
tag @s remove aspectlib.config_changer

return 1
