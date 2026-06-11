# Get stored Aspect ID
execute store result storage aspectlib:cache temp.id int 1 run scoreboard players get #aspects aspects.config.player.force_default_aspect
# Get Aspect Entry
function aspects:expose/aspect/from_aspect_id with storage aspectlib:cache temp
# Activate Aspect
## Prioritize random
execute if score #aspects aspects.config.player.force_default_aspect matches -1 run function aspects:aspect/random/activate
## Otherwise continue...
execute unless score #aspects aspects.config.player.force_default_aspect matches -1 run function aspects:aspect/activate_aspect_macro with storage aspectlib:cache temp.aspect
# Logger
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," was assigned a ", {text:"Default Aspect",color:"gold"}]}
