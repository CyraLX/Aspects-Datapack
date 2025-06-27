# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @a[tag=get_debug_logs] if entity @s[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs, tag=!config_changer] [{"text":"[AspectLib]: ","color":"#7700A7"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" removed from themselves the "},{"text":"get_debug_logs_expanded","color":"gold"},{"text":" Tag"}]}]
execute if entity @a[tag=get_debug_logs] if entity @s[tag=!get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs, tag=!config_changer] [{"text":"[AspectLib]: ","color":"#7700A7"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" gave themselves the "},{"text":"get_debug_logs_expanded","color":"gold"},{"text":" Tag"}]}]
tellraw @s[tag=get_debug_logs_expanded] [{"text":"[AspectLib]: ","color":"#7700A7"},{"text":"Removed ","color":"#aaaaaa","extra":[{"text":"get_debug_logs_expanded","color":"gold"},{"text":" Tag"}]}]
tellraw @s[tag=!get_debug_logs_expanded] [{"text":"[AspectLib]: ","color":"#7700A7"},{"text":"Recieved ","color":"#aaaaaa","extra":[{"text":"get_debug_logs_expanded","color":"gold"},{"text":" Tag"}]}]
# Remove temporary tag
tag @s remove config_changer

# Add/Remove tag and return
execute if entity @s[tag=!get_debug_logs_expanded] run return run tag @s add get_debug_logs_expanded
return run tag @s remove get_debug_logs_expanded
