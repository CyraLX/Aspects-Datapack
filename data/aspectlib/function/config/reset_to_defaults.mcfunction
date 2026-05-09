# Give temporary tag
tag @s add aspectlib.config_changer
# logger
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs, tag=!aspectlib.config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," reset all Registered Configs to their default values"]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},"Registered Configs reset to their default values"]}
# Remove temporary tag
tag @s remove aspectlib.config_changer

# End early if no configs are registered
execute unless score #aspects aspects.registry.config.list_index matches 0.. run return fail

# Set scoreboards
scoreboard players reset #aspects aspectlib.dummy
scoreboard players operation #aspects aspectlib.dummy = #aspects aspects.registry.config.list_index
execute store result storage aspectlib:cache temp.registry_config_list int 1 run scoreboard players get #aspects aspectlib.dummy
# Start Loop
function aspectlib:config/_macros/reset_to_defaults_loop with storage aspectlib:cache temp
