# Return early if current Aspect is valid
$execute if data storage aspects:registry aspect[{namespace: $(namespace), name: $(name)}] run return fail
# Print logs
$execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," had an Unregistered Aspect ",{text:"$(namespace):$(name)",color:"gold"},"!"]}

# Try calling undefined Aspect's deactivate function
$function $(namespace):aspect/$(name)/deactivate
# Remove data from Player Storage
$data remove storage aspectlib:users player.$(id).aspects.aspect_data."$(namespace):$(name)"
$data modify storage aspectlib:users player.$(id).aspects.aspect set value {}
# Reset Scoreboards
scoreboard players reset @s aspects.aspect_id
scoreboard players reset @s aspects.choose_aspect
scoreboard players reset @s aspects.dialog.menu_open
# Open Aspect Choosing dialog or assign default Aspect

execute unless score @s aspects.dialog.menu_requested matches 1 if function aspects:dialog/config/force_default_aspect/assign run return 1

execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," had the ", {translate:"dialog.aspects.choose_aspect",color:"gold"}, " dialog opened for them"]}
return run function aspects:dialog/choose_aspect/open_menu

