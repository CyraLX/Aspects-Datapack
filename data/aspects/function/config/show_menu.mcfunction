# Give temporary tag
tag @s add aspectlib.config_changer
# logger
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs, tag=!aspectlib.config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," opened Configs Dialog"]}
# Remove temporary tag
tag @s remove aspectlib.config_changer

# End early if...
## No Registered Configs exist
execute unless score #aspects aspects.registry.config.list_index matches 0.. run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"[ERROR]",color:"red"}," No Registered Configs defined!"]}
execute unless score #aspects aspects.registry.config.list_index matches 0.. run return run dialog show @s aspects:about
## Config List dialog has not been built
execute unless data storage aspectlib:cache build.aspects.dialog.config.list run tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"[ERROR]",color:"red"}," Config List dialog has not yet been built?"]}
execute unless data storage aspectlib:cache build.aspects.dialog.config.list run return run dialog show @s aspects:about

# Show dialog
function aspects:config/_macros/show_menu_dialog with storage aspectlib:cache build.aspects.dialog.config
