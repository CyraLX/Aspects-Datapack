# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] if score #aspects aspects.config.track_statistics matches 0 run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," set ",{text:"TRACK_STATISTICS",color:"gold"}," to ",{text:"FALSE",color:"red"},", but it was already set to ",{text:"FALSE",color:"red"}]}
execute if entity @p[tag=get_debug_logs] unless score #aspects aspects.config.track_statistics matches 0 run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," set ",{text:"TRACK_STATISTICS",color:"gold"}," to ",{text:"FALSE",color:"red"}]}
execute if score #aspects aspects.config.track_statistics matches 0 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"TRACK_STATISTICS",color:"gold"}," was already set to ",{text:"FALSE",color:"red"}]}
execute unless score #aspects aspects.config.track_statistics matches 0 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"TRACK_STATISTICS",color:"gold"}," is now set to ",{text:"FALSE",color:"red"}]}
# Set scoreboard
scoreboard players set #aspects aspects.config.track_statistics 0
# Cleanup
tag @s remove config_changer

return 0
