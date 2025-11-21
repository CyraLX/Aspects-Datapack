# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!config_changer] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{selector:"@s",color:"gold"}," reset ALL base modification and addon configs to default values"]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},"ALL base modification and addon configs were reset to default values"]}
# Set scoreboards
function #aspectlib:config/default
# Cleanup
tag @s remove config_changer
