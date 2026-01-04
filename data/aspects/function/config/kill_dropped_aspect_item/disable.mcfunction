# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," > ",{translate:"config.aspects.kill_dropped_aspect_item",color:"gold"}," = ",{translate:"extra.aspects.state.disabled",color:"red"}]}
tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{translate:"config.aspects.kill_dropped_aspect_item",color:"gold"}," = ",{translate:"extra.aspects.state.disabled",color:"red"}]}
# Set scoreboard
scoreboard players set #aspects aspects.config.kill_dropped_aspect_item 0
# Cleanup
tag @s remove config_changer

return 0
