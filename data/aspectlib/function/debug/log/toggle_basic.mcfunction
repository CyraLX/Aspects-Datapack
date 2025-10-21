# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] if entity @s[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{"selector":"@s",color:"gold"},{"text":" removed from themselves the "},{"text":"get_debug_logs","color":"gold"},{"text":" Tag"}]}
execute if entity @p[tag=get_debug_logs] if entity @s[tag=!get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{"selector":"@s",color:"gold"},{"text":" gave themselves the "},{"text":"get_debug_logs","color":"gold"},{"text":" Tag"}]}
tellraw @s[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{"text":"Recieved "},{"text":"get_debug_logs","color":"gold"},{"text":" Tag"}]}
tellraw @s[tag=!get_debug_logs] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{"text":"Recieved "},{"text":"get_debug_logs","color":"gold"},{"text":" Tag"}]}
# Remove temporary tag
tag @s remove config_changer

# Add/Remove tag and return
execute if entity @s[tag=!get_debug_logs] run return run tag @s add get_debug_logs
return run tag @s remove get_debug_logs
