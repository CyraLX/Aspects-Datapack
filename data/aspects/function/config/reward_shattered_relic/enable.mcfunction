# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] if score #aspects aspects.config.reward_shattered_relic matches 1 run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," set ",{text:"REWARD_SHATTERED_RELIC",color:"gold"}," to ",{text:"TRUE",color:"green"},", but it was already set to ",{text:"TRUE",color:"green"}]}
execute if entity @p[tag=get_debug_logs] unless score #aspects aspects.config.reward_shattered_relic matches 1 run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," set ",{text:"REWARD_SHATTERED_RELIC",color:"gold"}," to ",{text:"TRUE",color:"green"}]}
execute if score #aspects aspects.config.reward_shattered_relic matches 1 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"REWARD_SHATTERED_RELIC",color:"gold"}," was already set to ",{text:"TRUE",color:"green"}]}
execute unless score #aspects aspects.config.reward_shattered_relic matches 1 run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"REWARD_SHATTERED_RELIC",color:"gold"}," is now set to ",{text:"TRUE",color:"green"}]}
# Set scoreboard
scoreboard players set #aspects aspects.config.reward_shattered_relic 1
# Cleanup
tag @s remove config_changer

return 1
