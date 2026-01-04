# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," > ",{translate:"config.aspects.aspectless_players_negative_effects",color:"gold"}," = ",{translate:"extra.aspects.state.enabled",color:"green"}]}
tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{translate:"config.aspects.aspectless_players_negative_effects",color:"gold"}," = ",{translate:"extra.aspects.state.enabled",color:"green"}]}
# Set scoreboard
scoreboard players set #aspects aspects.config.aspectless_players_negative_effects 1
# Cleanup
tag @s remove config_changer

return 1
