# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] if score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," set ",{text:"FORCE_ASPECT_ON_ASPECTLESS_PLAYERS",color:"gold"}," to ",{text:"TRUE",color:"green"},", but it was already set to ",{text:"TRUE",color:"green"}]}
execute if entity @p[tag=get_debug_logs] unless score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," set ",{text:"FORCE_ASPECT_ON_ASPECTLESS_PLAYERS",color:"gold"}," to ",{text:"TRUE",color:"green"}]}
execute if score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"FORCE_ASPECT_ON_ASPECTLESS_PLAYERS",color:"gold"}," was already set to ",{text:"TRUE",color:"green"}]}
execute unless score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"FORCE_ASPECT_ON_ASPECTLESS_PLAYERS",color:"gold"}," is now set to ",{text:"TRUE",color:"green"}]}
# Set scoreboard
scoreboard players set #aspects aspects.config.force_aspect_on_aspectless_players 1
# Cleanup
tag @s remove config_changer

return 1
