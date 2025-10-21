# Give temporary tag
tag @s add logger
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!logger] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{selector:"@s",color:"gold"},{"text":" is checking their "},{"text":"Storage Data","color":"gold"}]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{"text":"Your stored "},{"text":"Storage Data","color":"gold"},{"text":":"}]}
# Remove temporary tag
tag @s remove logger

# Print Storage Data
function aspectlib:player/id/expose
function aspectlib:debug/storage_data/macro with storage aspectlib:dummy
