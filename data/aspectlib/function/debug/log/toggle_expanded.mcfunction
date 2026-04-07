# Give temporary tag
tag @s add aspectlib.config_changer
# Give feedback in chat
execute if entity @p[tag=aspectlib.receive_logs] if entity @s[tag=aspectlib.receive_logs_expanded] run tellraw @a[tag=aspectlib.receive_logs, tag=!aspectlib.config_changer] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{"selector":"@s",color:"gold"},{"text":" removed from themselves the "},{"text":"aspectlib.receive_logs_expanded","color":"gold"},{"text":" Tag"}]}
execute if entity @p[tag=aspectlib.receive_logs] if entity @s[tag=!aspectlib.receive_logs_expanded] run tellraw @a[tag=aspectlib.receive_logs, tag=!aspectlib.config_changer] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{"selector":"@s",color:"gold"},{"text":" gave themselves the "},{"text":"aspectlib.receive_logs_expanded","color":"gold"},{"text":" Tag"}]}
tellraw @s[tag=aspectlib.receive_logs_expanded] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{"text":"Recieved "},{"text":"aspectlib.receive_logs_expanded","color":"gold"},{"text":" Tag"}]}
tellraw @s[tag=!aspectlib.receive_logs_expanded] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{"text":"Recieved "},{"text":"aspectlib.receive_logs_expanded","color":"gold"},{"text":" Tag"}]}
# Remove temporary tag
tag @s remove aspectlib.config_changer

# Add/Remove tag and return
execute if entity @s[tag=!aspectlib.receive_logs_expanded] run return run tag @s add aspectlib.receive_logs_expanded
return run tag @s remove aspectlib.receive_logs_expanded
