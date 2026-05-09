# Give temporary tag
tag @s add aspectlib.config_changer
# Logger
$execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs, tag=!aspectlib.config_changer] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," set ",{translate:"dialog.aspects.configs.entry",with:[{translate:"$(namespace)",color:"blue"},{translate:"config.$(namespace).$(type).$(name)",color:"gold"}]}," Config's Dialog Input Mode to ",{text:"Advanced",color:"gold"}]}
# $tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{translate:"dialog.aspects.configs.entry",with:[{translate:"$(namespace)",color:"blue"},{translate:"config.$(namespace).$(type).$(name)",color:"gold"}]}," Config's Dialog Input Mode to ",{text:"Advanced",color:"gold"}]}
# Remove temporary tag
tag @s remove aspectlib.config_changer

# Set scoreboard and return
$return run scoreboard players set #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs 1
